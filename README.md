# SOLID Payment System

This project demonstrates a payment system implementation following SOLID principles in Dart. The system supports multiple payment methods while maintaining clean architecture and separation of concerns.

## SOLID Principles Implementation

1. **Single Responsibility Principle (SRP)**
   - Each class has a single responsibility
   - Payment processing, validation, and payment methods are separated

2. **Open/Closed Principle (OCP)**
   - New payment methods can be added without modifying existing code
   - System is open for extension but closed for modification

3. **Liskov Substitution Principle (LSP)**
   - All payment methods can be used interchangeably through the PaymentMethod interface
   - Validators are interchangeable through the PaymentValidator interface

4. **Interface Segregation Principle (ISP)**
   - Interfaces are specific and focused
   - Classes don't implement methods they don't need

5. **Dependency Inversion Principle (DIP)**
   - High-level modules depend on abstractions
   - Payment processor depends on interfaces rather than concrete implementations

## Components

- `PaymentMethod`: Abstract interface for payment methods
- `PaymentValidator`: Abstract interface for payment validation
- `PaymentProcessor`: Abstract interface for payment processing
- `CashPayment`: Concrete implementation for cash payments
- `CreditPayment`: Concrete implementation for credit card payments
- `BasicPaymentValidator`: Concrete implementation for payment validation
- `StandardPaymentProcessor`: Concrete implementation for payment processing

## Usage

The system demonstrates:
- Processing payments with different payment methods
- Payment validation
- Error handling
- Asynchronous payment processing
