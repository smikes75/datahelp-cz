describe('Contact Form', () => {
  beforeEach(() => {
    cy.visit('/contact');
  });

  it('submits contact form successfully', () => {
    cy.intercept('POST', '/api/contact', {
      statusCode: 200,
      body: { message: 'Success' }
    }).as('submitForm');

    cy.get('input[name="name"]').type('John Doe');
    cy.get('input[name="email"]').type('john@example.com');
    cy.get('input[name="phone"]').type('+1234567890');
    cy.get('textarea[name="message"]').type('This is a test message');

    cy.get('button[type="submit"]').click();

    cy.wait('@submitForm');
    cy.contains('Message sent successfully').should('be.visible');
  });

  it('shows validation errors', () => {
    cy.get('button[type="submit"]').click();

    cy.contains('Name is required').should('be.visible');
    cy.contains('Email is required').should('be.visible');
    cy.contains('Message is required').should('be.visible');
  });

  it('validates email format', () => {
    cy.get('input[name="email"]').type('invalid-email').blur();
    cy.contains('Invalid email format').should('be.visible');
  });
});