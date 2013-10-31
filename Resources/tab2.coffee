win = Ti.UI.createWindow
    title: 'Tab 2',
    backgroundColor: '#fff'

label = Ti.UI.createLabel
    top: 80
    width: 200
    height: 200
    color: '#999'
    text: 'I am Window 2'
    font:
        fontSize: 20
        fontFamily: 'Helvetica Neue'
    textAlign: 'center'
    borderStyle: Ti.UI.INPUT_BORDERSTYLE_ROUNDED

button = Ti.UI.createButton
    top: 200
    right: 60
    left: 60
    height: 40
    color: '#999'
    font:
        fontSize: 20
        fontFamily: 'Helvetica Neue'
    textAlign: 'center'
    title: 'button'
    accessibilityLabel: 'button'

win.add label
win.add button

# ---

button.addEventListener 'click', ->
    dialog = Ti.UI.createAlertDialog
        message: 'hello'
        title: 'alert'

    dialog.show()

# ---

module.exports = Ti.UI.createTab
    icon: 'KS_nav_ui.png'
    title: 'Tab 2'
    window: win