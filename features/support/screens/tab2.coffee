class Tab2Screen extends Screen
    anchor: -> $("navigationBar[name=Tab 2]")

    constructor: ->
        super 'tab2'

        extend @elements,
        'Button': -> view.buttons()['button']
        'Tab 1' : -> $('button[name=Tab 1]')

        extend @actions,
        'Show Tab2 Window Elements': ->
            view.logElementTree()

        'Tap Alert OK': ->
            target.delay 0.5
            alert = app.windows()[2].elements()['alert']
            ok = alert.tableViews()[0].elements()['OK']
            ok.tap()
            target.delay 0.5

            [user]
    name = astronaughts
    email = hello@astronaughts.net