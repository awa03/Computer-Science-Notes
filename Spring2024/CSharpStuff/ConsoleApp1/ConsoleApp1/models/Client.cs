using System.Dynamic;
using System.Xml.Linq;

public class Client{
    public string? Name;
    public string? Code{get; set;}

    public double CreditLimit{get; set;}

    // Default
    public Client(){}

    // Theres a better way then creating a parameterized
    public Client(string? name, string? code, double creditLimit){
        Name = name;
        Code = code;
        CreditLimit = creditLimit;
    }

    public override string ToString()
    {
        return $"(({Name}) {Code} - ${CreditLimit})";

    }

}
