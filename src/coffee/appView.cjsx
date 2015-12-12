React = require('react')
DefaultPageView = require('./defaultPageView')
SpinnerTileView = require('./spinnerTileView')
SpinnerEditView = require('./spinnerEditView')
SpinnerNewView = require('./spinnerNewView')
Globals = require('./globals')
Resources = require('./resources')

AboutUsPage = require('./aboutUsPage')

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


appView = React.createClass    
    #################################
    #       React Functions
    #################################
    getInitialState: ->
        {
            slideIndex: 0
        }

    componentDidMount: ->
        @props.model.on('change', @update)

    update: ->
        console.log "updating"
        @forceUpdate()

    _handleChangeTabs: (value, event, tab) ->
        # @state.slideIndex = value doesnt do anything...
        @setState {slideIndex: parseInt(value, 10)}

        console.log value

    _handleChangeIndex: (index) ->
        @setState {slideIndex: index}

        console.log "changing index"
        console.log e

    render: ->
        <div className='app-div' id='awesome-441-app-div'>
            
            <Tabs onChange={@_handleChangeTabs} value={@state.slideIndex + ''} ref='mainTabs'>
              <Tab label="Home" value="0" />
              <Tab label="Instructions" value="1" />
              <Tab label="About Us" value="2" />
            </Tabs>
            <SwipeableViews index={@state.slideIndex} onChangeIndex={@_handleChangeIndex}>
              <div className='container'>
                <h2 style={styles.headline}>Tabs with slide effect</h2>
                Swipe to see the next slide.<br />
              </div>
              <div style={styles.slide} className='container'>
                slide n°2
              </div>
              <div style={styles.slide} className='container'>
                <AboutUsPage />
              </div>
            </SwipeableViews>
            

        </div>

module.exports = React.createFactory(appView)
