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