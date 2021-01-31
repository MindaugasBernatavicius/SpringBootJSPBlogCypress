describe('Test Blog Title Page ', () => {
    it('Title page contains welcome message', () => {
        // arrange
        const url = 'http://localhost:8080';

        // act
        cy.visit(url)

        // assert
        cy.contains('Welcome to this awesome blog!')
        cy.contains('You can see all the blog posts by clicking here')
        cy.contains('If you are an admin, you can log in by clickin here')
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

        cy.get('body > div > div:nth-child(1)').then(function($elem) {
            expect($elem.text().trim()).contains(firstBlogPostTitle)
            // ... getting and logging the text of DOM elements
            // ... https://stackoverflow.com/questions/52491253/how-to-get-div-text-value-in-cypress-test-using-jquery
            cy.log($elem.text()) // this will print in the test runner view
            console.log($elem.text()) // this will print in the browser console
        })
    })
    xit('User can see admin login dialog from title page', () => {
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

// It is possible to add another describe block
// describe('Test Post Page ', () => { });