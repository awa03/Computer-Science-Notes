using System.Reflection;
using System.Dynamic;
using System.Xml.Linq;
using ConsoleApp1;

public class ClientContainer {
    private List<Client> clientList{
        get; set;
    }

    public ClientContainer(){
        this.clientList = new List<Client>();
    }

    public bool addClient(Client add_client){
        foreach(var client in clientList){
            if(client.Code == add_client.Code){
                Console.WriteLine("Code is already being utalized by another user...");
                return false;
            }
        }
        clientList.Add(add_client);
        return true;
    }

    public void View_Client_List(){
        foreach(var client in clientList){
            Console.WriteLine(client.ToString());
        }
    }

}