React = require('react')


{Tab, Tabs, FlatButton, AppBar, MenuItem, LeftNav, Snackbar, Styles, Paper, RaisedButton} = require('material-ui')

styles = require('material-ui/lib/styles')
Colors = require('material-ui/lib/styles/colors')

homePage = React.createClass    
    #################################
    #       React Functions
    #################################

    render: ->  
      <div className='container'>
        <div className='spacer'></div>
        <Paper zDepth={2}>
            <div className='container'>
                <h2 className="text-center" style={styles.headline}>ShuffleIt</h2>
                <blockquote className="pull-right" style={{marginRight: '5%'}}>
                    <p>Have you ever been in a situation in which you cannot decide what to do? or where to go eat? or what classes to take? 
                or what shampoo brand to get at the store? or what movie to watch?</p>
                    <small>asked <cite>By Someone Somewhere</cite></small>
                </blockquote>
            </div>
            <section className="fluid-container content-section text-center"> 
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
        </Paper>

        <div className='spacer'></div>
        <Paper zDepth={2}>
            <div className='container'>
                <h2 className="text-center" style={styles.headline}>Experience the App!</h2>
                <div className='text-center'>
                    <RaisedButton linkButton={true} label="Go to app" primary={true} href='http://www-personal.umich.edu/~tylermar' />
                    <div className='spacer'></div>
                    <RaisedButton linkButton={true} label="See App Code" primary={true} href='https://github.com/tyler-markvluwer/material-ui-demo' />
                </div>
                <div className='spacer'></div>
            </div>
        </Paper>
      </div>
     

module.exports = React.createFactory(homePage)
