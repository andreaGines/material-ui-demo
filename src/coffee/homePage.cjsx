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


homePage = React.createClass    
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
        <h2 className="text-center" style={styles.headline}>ShuffleIt</h2>
        <blockquote className="pull-right">
            <p>Have you ever been in a situation in which you cannot decide what to do? or where to go eat? or what classes to take? 
        or what shampoo brand to get at the store? or what movie to watch?</p>
            <small>asked <cite>By Someone Somewhere</cite></small>
        </blockquote>
        <section className="container content-section text-center"> 
            <div className="row">
                <div className="col-lg-8 col-lg-offset-2"> 
                    <h4>ShuffleIt is here to save the day! This great product is a web application. 
                        ShuffleIt is easy, simple and awesome! All you have to do is add the choices to the Shuffle it spinners, 
                        hit play and receive a top choice. You can go with the choice provided by the app or hit play again to get another pick. 
                        You can hit play as many times as you want and the application will display a random pick every time. 
                        You can have as many or as few choices as you wish and the spinner
                        will pick a random one every time you hit play. 
                    </h4><br />
                </div>
            </div>
        </section>
      </div>
     

module.exports = React.createFactory(homePage)
