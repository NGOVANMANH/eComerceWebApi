class EmailService {
    sendEmail(email, subject, message) {
        // Your email sending logic goes here
        console.log(`Sending email to ${email} with subject: ${subject} and message: ${message}`)
    }
}

module.exports = new EmailService;