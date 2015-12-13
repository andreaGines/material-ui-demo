React = require('react')

AboutUsPage = require('./aboutUsPage')
HomePage = require('./homePage')
InstructionsPage = require('./instructionsPage')

{Tab, Tabs, FlatButton, AppBar, MenuItem, LeftNav, Snackbar, Styles} = require('material-ui')
SwipeableViews = require('react-swipeable-views')

styles = require('material-ui/lib/styles')

appView = React.createClass    
    #################################
    #       React Functions
    #################################
    getInitialState: ->
        {
            slideIndex: 0
        }

    _handleChangeTabs: (value, event, tab) ->
        # @state.slideIndex = value doesnt do anything...
        @setState {slideIndex: parseInt(value, 10)}

    _handleChangeIndex: (index) ->
        @setState {slideIndex: index}

    render: ->
        <div className='app-div' id='awesome-441-app-div' style={{width: '100%', height: '100%'}}>
            
            <Tabs onChange={@_handleChangeTabs} value={@state.slideIndex + ''} ref='mainTabs'>
              <Tab label="Home" value="0" />
              <Tab label="Instructions" value="1" />
              <Tab label="About Us" value="2" />
            </Tabs>
            <SwipeableViews index={@state.slideIndex} onChangeIndex={@_handleChangeIndex} style={{height: '90%'}}>
              <div className='fluid-container'>
                <HomePage/>
              </div>
              <div style={styles.slide} className='container'>
                <InstructionsPage/>
              </div>
              <div style={styles.slide} className='container'>
                <AboutUsPage />
              </div>
            </SwipeableViews>
            

        </div>

module.exports = React.createFactory(appView)
