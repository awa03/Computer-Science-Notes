
#### View Models

```cs
// Init View Model
InitializeComponent();
BindingContext = new ClientDialogViewModel();

// Then Create A View Model
namespace MAUI.PracticePanther.viewmodels
{
    public class ClientDialogViewModel{
        private string Name; 
        public string name {get; set;}
        private string code {get; set;};

        public ClientDialogViewModel(){
            return new ;
        }
        
        // or we can have a private client.. 
        // We can do this through returning client values
        // private Client client
        // we need to set this in the name setter to new Client 
        // ... return client.name // etc
    }
}

```

##### In Xaml
```xaml
<Label Text="Code" Grid.Column="0" Grid.Row="0"/>
<Entry Text = "{Binding Code}" Grid.Column="1" Grid.Row="0"/>
<Label Text="Name" Grid.Column="" Grid.Row=""/>
<Entry Text= "{Binding Name}" Grid.Column="1" Grid.Row="1"/>
<!-- Etc Etc -->
```

#### Button Click Event
```cs 
private void OkClicked(object sender, EventArgs e){
    // Implementation
}
```


