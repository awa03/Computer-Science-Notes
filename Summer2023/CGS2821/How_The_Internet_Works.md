The internet is divided into two main categories 
- <b>Server</b>- A computer that hosts websites and serves them to clients
- <b>Client</b>- Your laptop / Phone that requests pages from the server. These pages are rendered by your browser, which interprets the HTML code so that it may be displayed to the user

<h3>Internet Protocol Addressing</h3>
- How we know which webserver is where
- How the server knows where to send the files
Every computer on the network has an IP address. This is usally formatted as: ~`64.233.177.130` . <b>Domain Names</b> are a way of accessing the servers ip address in a way that is easy to remeber. The domain name is therefore just the address of the server (<i>Google.com</i>). 

When you enter a domain name the computer needs to lookup the ip address for that name. The <b>Domain Name System</b> (DNS) translates the domain name into the ip address, since the computer does not understand directly what server the domain name is referencing. It is essentially a giant phone book for ip addresses.

So if `cci.fsu.edu` is entered into your browser the DNS will respond with the coresponding ip address, `128.186.72.147`

When a computer requests a website from a server the following is sent:
 - HTML code
 - Style Sheets (css)
 - Images

When you visit a site in your browser it asks the DNS for the ip address entered, then the browser sends a request to the websites ip address for the HTML code. The webserver then follows by sending the HTML code to view the website. The browser then interprets the code given and displays the website for you!

A web address that refers to a specific page or file on a website is called a **Uniform Resource Locator (URL)**. For example, the URL [https://cci.fsu.edu/index.php](https://cci.fsu.edu/index.php) contains the protocol (HTTPS), the domain (cci.fsu.edu), and the local name of the specific file on the server (index.php).

[[Computer Science Notes/CGS 2821/Index|Index]]
