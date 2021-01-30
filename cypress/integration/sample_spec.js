describe('Test Blog Title Page ', () => {
    it('Title page contains welcome message', () => {
        cy.visit('http://localhost:8080')
        cy.contains('Welcome to this awesome blog! ')
    })

    it('User can navigate to all blogposts page from title page', () => {
        // arrange
        let firstBlogPostTitle = `Record Wave Of African Migrants`

        // act
        cy.visit('http://localhost:8080')
        cy.contains('here').click()
        // cy.wait(50)

        // assert
        cy.url().should('include', '/post')
        cy.get('body > div > h3:nth-child(1)').then(function($elem) {
            expect($elem.text().trim()).contains(firstBlogPostTitle)
            // ... getting and logging the text of DOM elements
            // ... https://stackoverflow.com/questions/52491253/how-to-get-div-text-value-in-cypress-test-using-jquery
            cy.log($elem.text())
        })
    })

    it('User can see admin login dialog from title page', () => {
        // arrange
        let url = 'http://localhost:8080'

        // act
        cy.visit(url)
        cy.get('body > div > p:nth-child(3) > a').click()
        // TODO :: basic auth login : https://github.com/cypress-io/cypress/issues/4669
        // https://stackoverflow.com/questions/56804599/manually-enter-auth-credentials-in-dialog
        // cy.type('Welcome')

        // assert
        cy.url().should('eq', url + '/auth')

        cy.wait(50)
        cy.contains('Sign in')

    })
})