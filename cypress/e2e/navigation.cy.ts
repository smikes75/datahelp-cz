describe('Navigation', () => {
  beforeEach(() => {
    cy.visit('/');
  });

  it('navigates through main pages', () => {
    // Check home page
    cy.get('h1').should('contain', 'Professional Data Recovery');
    
    // Navigate to Services
    cy.get('nav').contains('Services').click();
    cy.url().should('include', '/services');
    cy.get('h1').should('contain', 'Our services');
    
    // Navigate to About
    cy.get('nav').contains('About').click();
    cy.url().should('include', '/about');
    cy.get('h1').should('contain', 'About us');
    
    // Navigate to Contact
    cy.get('nav').contains('Contact').click();
    cy.url().should('include', '/contact');
    cy.get('h1').should('contain', 'Contact');
  });

  it('tests language switching', () => {
    // Switch to Czech
    cy.get('[aria-label="Vybrat jazyk"]').click();
    cy.get('button').contains('cs').click();
    cy.get('h1').should('contain', 'Profesionální obnova dat');
    
    // Switch to German
    cy.get('[aria-label="Vybrat jazyk"]').click();
    cy.get('button').contains('de').click();
    cy.get('h1').should('contain', 'Professionelle Datenrettung');
  });
});