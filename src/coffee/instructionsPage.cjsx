React = require('react')


Mui = require('material-ui')
{Tab, Tabs, FlatButton, AppBar, MenuItem, LeftNav, Snackbar, Styles} = require('material-ui')
SwipeableViews = require('react-swipeable-views')

styles = require('material-ui/lib/styles')
List = require('material-ui/lib/lists/list')
ListItem = require('material-ui/lib/lists/list-item')
Colors = require('material-ui/lib/styles/colors')
NavigationClose = require('material-ui/lib/svg-icons/navigation/close')
MoreVertIcon = require('material-ui/lib/svg-icons/navigation/more-vert')
Avatar = require('material-ui/lib/avatar');
FileFolder = require('material-ui/lib/svg-icons/file/folder')


instructionsPage = React.createClass    
    #################################
    #       React Functions
    #################################

    componentDidMount: ->
        #@props.model.on('change', @update)

    update: ->
        console.log "updating"
        @forceUpdate()

    render: ->  
      <div className='container'>
          <div className="row" className="container content-section text-center">
                <div className="col-lg-8 col-lg-offset-2">
                    <ul className="list-unstyled">
                        <li>
                            <h2>Home</h2>
                            <p>All of your custom spinners are accessible on this page. 
                                Clicking on any of the spinners on this page will take you to the 'ShuffleIt' page. 
                                Here, the spinner that was most recently selected will be ready to spin!
                            </p>
                        </li>
                        <li>
                            <h2>ShuffleIt</h2>
                            <p>On this page you can shuffle any of your spinners to make a decision. 
                            All you have to do is press the desicion circle that appears at the top of the page.
                            The spinner will then make a decision! You can see which spinner is currently selected as
                            indicated by the star next to the list items at the bottom. To activate a different spinner
                            just click its name, and it will be ready to spin!
                            </p>
                            <p>
                            Once a decision has been made, a dialog will appear, giving the option to 'Share' on Facebook,
                            or try again, if you would like to shuffle some more!
                            </p>
                        </li>
                        <li>
                            <h2>Edit Spinner</h2>
                            <p>
                            Here is where you can really get creative with your spinners!
                            First activate the spinner which you would like to edit. This can be done from the
                            ShuffleIt page, or the Home page. Then click on the left menu, and click 'Edit'.
                            </p>
                            <p>
                            From this page you will notice that there is a text field at the top, an 'active tiles',
                            and an 'inactive tiles' section. The text field allows you to add new tiles to your spinner.
                            As you type a preview of the text is populated in the 'active tiles' section. To finish adding
                            your tile, simply press 'enter' or press the 'add' button.
                            </p>
                            <p>
                            The active tiles are tile which can be randomly selected
                            when a spinner is shuffled. The inactive cannot be selected, but stick around and can easily
                            be reactived if you want to include them as possibilities in a future decision.
                            </p>
                            <p>
                            You will also notice that each tile in the 'active tiles' section has a 'more options'
                            icon on the right side. You can click this in order to 'Disable', 'Edit', or 'Delete'
                            a tile from your spinner.
                            </p>
                        </li>
                        <li>
                            <h2>New Spinner</h2>
                            <p>
                            In order to create a new spinner, simply open the left menu, or click the '+' sign on the top
                            right of the 'ShuffleIt' page. Once you have started making a new spinner a dialog box will pop
                            up. On this dialog simply enter the name of the spinner. Make sure that you spinner name is unique
                            from any specific spinners you might have.
                            </p>
                            <p>
                            Once you have entered a name for your new spinner, you will be brought to the cover photo selection page.
                            On this page you will select a spinner by clicking on it. Once it has been clicked, the start on the bottom
                            right will turn red. In order to proceed to the next page, you will click 'Save' on the top right of the menu
                            bar. Clicking save will take you to the 'Edit' page where you can start to add tiles to your new spinner!
                            </p>
                        </li>
                    </ul> 
                </div>
            </div> 
      </div>
     

module.exports = React.createFactory(instructionsPage)
