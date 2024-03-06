> Create a new Maui project within the project. 

Set the MAUI directory as the executed part of the project, or....
`dotnet run` in the directory

Then add  the following to the project... 
```.xaml
<WindowsPackageType>None</WindowsPackageType> 
<WindowsAppSDKSelfContained Condition="'$(IsUnpackaged)' == 'true'">true</WindowsAppSDKSelfContained>**
<SelfContained Condition="'$(IsUnpackaged)' == 'true'">true</SelfContained>
```

as well as
```.xaml
"Windows Machine": {  
  "commandName": "Project"  
}
```

****

#### Dangers of Maui

Do not update too much of xaml at one time. It will lead to random errors which will be hard to discover. So use GitHub, so we can revert, or fix this.

****
#### Creating a button

```.xaml
<button/> <!-- Creates A Button -->
```

We can add custom styling, or uses to the button using modifications. 

```.xaml
<button Text="Hello, World!" Clicked="Button_Clicked" /> 

private void Button_Clicked(object sender, EventArgs e){
	<!-- 
		The Name Doesnt Need To Be Button_Clicked 
		We Can Add Functionality of the button in here.
	-->
}
```

****

#### Binding

We can use `BindingContext = this;` however this couples the model and the view, so we cannot use blazer, react, etc because it is bound to maui. So we need to create a separate view model to use a different model.

>[!NOTE]
>Using good naming conventions will save a ton of time
>ClientViewModel.cs -- Example

```
new Client{Name = "Test Client"}
```

