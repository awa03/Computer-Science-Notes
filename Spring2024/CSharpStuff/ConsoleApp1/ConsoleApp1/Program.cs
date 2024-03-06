using System;
using ConsoleApp1;

namespace ConsoleApp1 {
    internal class Program {
        static void Main(string[] args) {
            ClientContainer container = new ClientContainer();

            Console.WriteLine("How Many Clients Would You Like To Add");
            int numClients = Convert.ToInt32(Console.ReadLine());

            for (int i = 0; i < numClients; i++) {
                bool clientAdded = false;

                while (!clientAdded) {
                    clientAdded = container.addClient(newClient());
                }
            }
            Console.Clear();
            container.View_Client_List();
        }

        public static Client newClient() {
            Console.WriteLine("Name:");
            var name = Console.ReadLine();

            Console.WriteLine("Code:");
            var code = Console.ReadLine();

            Console.WriteLine("Credit Limit:");
            var cLimitInput = Console.ReadLine();

            if (double.TryParse(cLimitInput, out double cLimitObj)) {
                var myClient = new Client { Name = name, Code = code, CreditLimit = cLimitObj };
                return myClient;
            } 
            else {
                Console.WriteLine("Invalid credit limit. Defaulting to 0.");
                var myClient = new Client { Name = name, Code = code, CreditLimit = 0 };
                return myClient;
            }
        }
    }
}
