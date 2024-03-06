
| Phase              | Desc |
| ------------------ | ---- |
| Analysis           | Product Owner, Manager, Etc     |
| Design             | Ui / UX     |
| Development | Front / Back Engineer     |
| Testing         | Solutions Architect     |
| Deployment        | Data Administration     |
| Maintenance                   | Users, Testers Support Managers     |
#### What is Unit Testing

- Allows us to predict the behavior of units of code and prevents regression in most situations before it gets deployed
- Provides documentation that others can read and understand
- Much quicker than performing functional tests
- C# has excellent frameworks for unit testing

#### Rules For Unit Testing

>[!IMPORTANT]
>Arrange, Act, Assert

1) Have `[TestMethod]` Attribute
2) Have no params
3) Be a public method with the return method `void`

```cs
[TestMethod]
public void Test(){
	Assert.AreEqual(expectedVal, param1);
	Assert.IsTrue(param1); 
	Assert.IsFalse(param1);
	Assert.IsNull(param1);
	Assert.ThrowsException</*Exception*/>(() => val);
}
// Test if values are what is expected... 
```

[More On Assert Class](https://learn.microsoft.com/en-us/dotnet/api/system.diagnostics.debug.assert?view=net-8.0)


