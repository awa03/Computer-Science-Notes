## Reading, Displaying, and Saving Images

```py
# First We Must Import openCV
import cv2 as cv

# Then to display an image we must first create a variable containing the image
img = cv.imread('image.jpg')

# Now display the image
cv.imshow('Input Image', img)

# Used to await keyboard entry
cv.waitKey()
```

The image type is held as `<type 'numpy.ndarray'>` this can be seen through the command `type(img)`. 

## Loading and Saving the Image
First covering loading colored images into grey scale, we accomplish this by using the following commands

```py
import cv2 as cv
gray_img = cv.imread('input/path/image.jpg', cv.IMREAD_GRAYSCALE) 

# Saving into a file
cv.imwrite('output/path/image.jpg', gray_img)
```

The above code will load a file in and convert it to grey scale, in this case overwriting the previous save.

## Image Color Spaces
Refers to a way of _organizing colors_. A <b>color space</b> is a combination of a color model and a mapping function. This (color models) allows us to represent the color values as tuples. There are a few different color spaces that can be used in various use cases:

- <b>RGB</b> - Each color value is represented as a weighted combination of red, green, and blue. So every color value is represented as a touple of 3 numbers. 
- <b>YUV</b> - RGB is very limiting in many applications, YUV solves this by using: Y referring to the luminosity, U/V refer to the color information. 
- <b>HSV</b> - YUV was still limiting so HSV solved this issue by adding the Hue color space, Saturation, and Value. This is the closest to how the human eye perceives color

## Converting Between Color Spaces
In converting between color spaces we have around 190 options. To view the options enter the following: 

```py
import cv2
print [x for x in dir(cv2) if x.startswith('COLOR_')]
```

Now we can use these options to convert from one color space to another. 

```py
import cv2 as cv 
# dont need to do -- I will prob switch to cv2 soon

img = # same deal -- IMPORT AN IMAGE

# --------- Conversion ---------- #
gray_img = cv2.cvtColor(img, cv2.COLOR_BGR2GRAY)

cv2.imshow('Grayscale image', gray_img)

# To Convert to YUV ------------- # 
yuv_img = cv2.cvtColor(img, cv2.COLOR_BGR2YUV)

cv2.waitKey() 
```

If we wish to separate the separate panels in the YUV color space we can do this using

```py
cv2.imshow('Y channel', yuv_img[:, :, 0])
cv2.imshow('U channel', yuv_img[:, :, 1])
cv2.imshow('V channel', yuv_img[:, :, 2])
```

We can also convert the image to HSV using the following command

```py 
hsv_img = cv2.cvtColor(img, cv2.COLOR_BGR2HSV)
cv2.imshow('HSV image', hsv_img)
```

We can again separate the channels using the same methodology

```py
cv2.imshow('H channel', hsv_img[:, :, 0])
cv2.imshow('S channel', hsv_img[:, :, 1])
cv2.imshow('V channel', hsv_img[:, :, 2])
cv2.waitKey()
```

## Image Translation

<blockquote>"Let’s say we want to move the image within our frame of reference. In computer vision terminology, this is referred to as translation."</blockquote>

```py

# ---------------- Imports ---------------- #
import cv2
import numpy as np

# ---------------- Reading ---------------- #
img = cv2.imread('images/input.jpg')

# ---------------- Translate ---------------- #
num_rows, num_cols = img.shape[:2]
translation_matrix = np.float32([ [1,0,70], [0,1,110] ])
img_translation = cv2.warpAffine(img, translation_matrix, (num_cols,
num_rows))
cv2.imshow('Translation', img_translation)
cv2.waitKey()
```

We are shifting the image by subtracting from either the x or y values of the image. In order to do this we are creating a translation matrix. The next line `cv2.warpAffine(img, translation_matrix, (num_cols, num_rows))`
is applying this translation to our image, and maintaining the original values of the view container. We can make the image entirely visible by modifying the line as such; 

```py
# Adding padding to ensure image is not cropped
img_translation = cv2.warpAffine(img, translation_matrix, (num_cols + 70,
num_rows + 110))

# num_col + x is increasing the columns 
# num_rows + y is increasing the rows
```

## Image Rotation

We need to again create a matrix in order to adjust the image. In order to do this we use the following line: 
```py
matrix = cv2.getRotationMatrix2D((num_cols/2, num_rows/2), 30, 1)
```

This line can then be applied again using `warpAffine`. 
```py
cv2.warpAffine(img, rotation_matrix, (num_cols, num_rows))
```

Rotation must be understood mathematically. Rotation is also a form of translation, which we can create using the following matrix

```
c = [ [cosø, -sinø] ,
	  [sinø, cosø ] ]
```

ø represents the angle of rotation in the counter clockwise direction. We can specify the point in which the image is rotated around, using `getRotationMatrix2D`. Then we use `warpAffine` to apply this matrix. 

## Image Scaling

One of the most common operations in computer vision is image scaling. This can be accomplished by using the `resize` functionality. 

```py
img_scaled = cv2.resize(img,None,fx=1.2, fy=1.2, interpolation =
cv2.INTER_LINEAR)
cv2.imshow('Scaling - Linear Interpolation', img_scaled) img_scaled =
cv2.resize(img,None,fx=1.2, fy=1.2, interpolation = cv2.INTER_CUBIC)
cv2.imshow('Scaling - Cubic Interpolation', img_scaled) img_scaled =
cv2.resize(img,(450, 400), interpolation = cv2.INTER_AREA)
cv2.imshow('Scaling - Skewed Size', img_scaled) cv2.waitKey()
```

<blockquote>Whenever we resize an image, there are multiple ways to fill in the pixel values. When we
are enlarging an image, we need to fill up the pixel values in between pixel locations.</blockquote>
There are multiple ways to accomplish interpolation. For enlargement use _linear_ or _cubic_ interpolation. For shrinking we should use _area-based interpolation_. _Cubic interpolation_ is more complex computationally, slower than linear. However the quality of the image will also be higher. 

## Affine Transformations

Affine transformations are generalizations of Euclidean transformations. Lines will be the same, but squares may be transformed into rectangles or parallelograms. This is because affine transformations do not preserve length or angles. 

```py
import cv2
import numpy as np

# Load The Image into a var 
img = cv2.imread('images/input.jpg')

# Define Source and Destination Points
rows, cols = img.shape[:2]
src_points = np.float32([[0,0], [cols-1,0], [0,rows-1]])
dst_points = np.float32([[0,0], [int(0.6*(cols-1)),0], [int(0.4*(cols- 1)),rows-1]])

# Get Location and - Apply the transformations
affine_matrix = cv2.getAffineTransform(src_points, dst_points)
img_output = cv2.warpAffine(img, affine_matrix, (cols,rows))

# Display the images
cv2.imshow('Input', img)
cv2.imshow('Output', img_output)
cv2.waitKey()
```

We are mapping the source points to the destination points. Then getting the transformation matrix, storing it in `affine_matrix`

If we wish to mirror the image we need to change the control points in the following way

```py
src_points = np.float32([[0,0], [cols-1,0], [0,rows-1]])
dst_points = np.float32([[cols-1,0], [0,0], [cols-1,rows-1]])
```

## Projective Transformations

Affine transformations impose certain restrictions. To remedy this we are able to use a projective transformation. This is referred to as <b>homography</b>. 

<blockquote>We basically describe what happens to an image when
the point of view is changed. For example, if you are standing right in front of a sheet of
paper with a square drawn on it, it will look like a square. Now, if you start tilting that
sheet of paper, the square will start looking more and more like a trapezoid. Projective
transformations allow us to capture this dynamic in a nice mathematical way. These
transformations preserve neither sizes nor angles, but they do preserve incidence and
cross-ratio.</blockquote> 
Any two images on a given plane are related via homography. As long as they are in the same plane we can transform anything into something else. This is useful for things such as augmented reality, or image rectification. For instance if we would like to make the top of the image appear as though it is closer to the camera, by making it larger than the bottom of the image. We can do this using the following code: 

```py
# Imports -------------------
import cv2
import numpy as np

# Perspective manipulation --
img = cv2.imread('images/input.jpg')
rows, cols = img.shape[:2]
src_points = np.float32([[0,0], [cols-1,0], [0,rows-1], [cols-1,rows-1]])
dst_points = np.float32([[0,0], [cols-1,0], [int(0.33*cols),rows-1], [int(0.66*cols),rows-1]])

# Create The Perspectives ---
projective_matrix = cv2.getPerspectiveTransform(src_points, dst_points)
img_output = cv2.warpPerspective(img, projective_matrix, (cols,rows))

# Show images ---------------
cv2.imshow('Input', img)
cv2.imshow('Output', img_output)
cv2.waitKey()
```

We chose control points in the source image and map them to the destination image. Another example of this being: 

```py
src_points = np.float32([[0,0], [0,rows-1], [cols/2,0], [cols/2,rows-1]])
dst_points = np.float32([[0,100], [0,rows-101], [cols/2,0], [cols/2,rows-
1]])
```

## Navigation

- [Root Dir](Study_Notes_2024/OpenCV_With_Python/Index.md) <img src="Assets/root.png" alt="Root Dir Folder" style="width:20px;height:20px;">

