describe('Test Post Page ', () => {
    // TODO :: this test should probably be added to another file
    it('Can add a comment', () => {
        // arrange
        const url = 'http://localhost:8080/posts';
        // TODO :: login

        // act
        cy.visit(url)
        cy.get(':nth-child(1) > :nth-child(5) > #read-more-link').click();
        cy.get('[type="text"]').click();
        cy.get('[type="text"]').type('Pranciškus');
        cy.get('textarea').clear().type('Komentaras');
        cy.get('[type="submit"]').click();

        // TODO :: assert

        // TODO :: teardown
        //  .. first we need to do this test as admin, to be able to delete the comment
        //  .. then delete the comment. In this case we would make an assumption that if
        //  .. admin can add comment, user will capable of that as well.
        //  .. If we wanted to not assume that, then the teardown step should be encapsulated
        //  .. into some function that would login as admin and delete the comment.
    })
});