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
                            <p>All of your custom spinners accessible in thi page. 
                                Clicking on any of the spinners in this page will take you to the ShuffleIt page, 
                                and the spinner that will be ready to be sluffled is the one that was previously clicked on in the 
                                Home page.
                            </p>
                        </li>
                        <li>
                            <h2>ShuffleIt</h2>
                            <p>In this page you can shuffle any of your spinners. 
                            All you have to do is press the desicion circle that appears at the top of the page.
                            The spinner that will be shuffled is the one that is the one that has a star next to its spinner title.
                            </p>
                        </li>
                        <li>
                            <h2>Edit Spinner</h2>
                            <p>Here is where you can really get creative with your spinners! 
                                You can select any of the existing spinners. 
                                Once you have selected a spinner you can add, delete, or disable tiles or edit the name of existing tiles.

                            </p>
                        </li>
                        <li>
                            <h2>New Spinner</h2>
                            <p>
                            </p>
                        </li>
                    </ul> 
                </div>
            </div> 
      </div>
     

module.exports = React.createFactory(instructionsPage)
