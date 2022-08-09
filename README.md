Self-Assessment

Functionality - Meets Expectations
Object Oriented Programming - Exceeds Expectations
Ruby Conventions and Mechanics - Meets Expectations
Test Driven Development - Meets Expectations
Version Control - Meets Expectations

Comments:
  Functionality
    Using the command line interface, I can demonstrate that the encrypt and decrypt methods in the Enigma class are functioning properly.  I have not attempted the cracking method.

  Object Oriented Programming
    I utilized one module (ShiftMaker) in a logical way. The purpose of this module is to calculate the shifts with a given key and date. These calculations are then used in the encrypt and decrypt method in the Enigma class. This keeps the encrypt and decrypt methods to a single responsibility of actually encrypting and decrypting using the calculations done by ShiftMaker module.

  Ruby Conventions and Mechanics
    I believe my code is properly indented, spaced, and lines are kept short. The encrypt and decrypt methods are not less than 10 lines, but are still concise. Hashes are implemented where appropriate.

  Test Driven Development
    I believe every method is tested at both the unit and integration level (with arguments given and without).  Helper methods are tested in their respective spec file. SimpleCov shows that test coverage is at 100%. Obvious edge cases are address (if character is not in character set such as !", and uppercase letters).

  Version Control
    At this point (before attempting the cracking method), I have 33 commits and 6 pull requests. While this does not hit the benchmark of 30, in reviewing my commits, I very rarely included multiple pieces of functionality (only in the occasion of creating a test and creating a method).
