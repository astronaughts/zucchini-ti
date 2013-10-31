class Tab1Screen extends Screen
    anchor: -> $('navigationBar[name=Tab 1]')

    constructor: ->
        super 'tab1'

        extend @elements,
        # 'Text': -> view.textFields()['text']
        # 'Text': -> $('textfield[name=text]')
        'Text': -> $('textfield').first()
        'Tab 2' : -> $('button[name=Tab 2]')

        extend @actions,
        'Show Tab1 Window Elements': ->
            view.logElementTree()

        'Blur': ->
            app.keyboard().elements()['Return'].tap()
            Helpers.example()