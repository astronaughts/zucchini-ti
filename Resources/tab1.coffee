win = Ti.UI.createWindow
    title: 'Tab 1'
    backgroundColor: '#fff'

label = Ti.UI.createLabel
    top: 80
    width: 200
    height: 200
    color: '#999'
    text: 'I am Window 1'
    font:
        fontSize: 20
        fontFamily: 'Helvetica Neue'
    textAlign: 'center'
    borderStyle: Ti.UI.INPUT_BORDERSTYLE_ROUNDED

text = Ti.UI.createTextField
    top: 200
    right: 20
    left: 20
    height: 40
    color: '#999'
    font:
        fontSize: 20
        fontFamily: 'Helvetica Neue'
    textAlign: 'center'
    borderStyle: Ti.UI.INPUT_BORDERSTYLE_ROUNDED
    accessibilityLabel: 'text'

win.add label
win.add text

# ---

module.exports = Ti.UI.createTab
    icon: 'KS_nav_views.png'
    title: 'Tab 1'
    window: win