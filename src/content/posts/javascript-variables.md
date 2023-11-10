---
type: TechDoc
title: JavaScript Variables
description: "Orchestrating a program's contained values"
tags: ['techDoc', 'software', 'javaScript']
publishedAt: 2023-10-29
updatedAt: 2023-10-29
url: javascript-variables
---
## Variables and Declaration with var, let, and const
### A Variable's Purpose
A variable is a form of data storage whose naming convention is compliant with JavaScript's grammatical lexical analysis. Leveraging these entities makes it possible to perform modifications on values throughout a program's execution. The state of variables is managed by hooking them into the machine's memory.
### Usage of Variables
A keyword such as `var`, `let`, or `const` must first be employed. Variables can be initialized with any value which is a legal JavaScript expression. The default value, prior to initialization, is `undefined`. The assignment operator `=` binds the keyword to a supplied value, delegating data to a portion of memory.
## The Hoisting Myth
The JavaScript interpreter appears to move the declaration of functions, variables, classes, or imports to the top of their scope prior to code execution. "Hoisting" (or "raising") is not a standard ECMAScript specification. Instead, the term colloquially refers to behavior which occurs when the `var` keyword is invoked. The phenomenon creates situations such as the ability to use a var-declared-variable's value before the line where the variable is instantiated. Cases exist wherein a variable can be referenced before declared; a `ReferenceError` is not issued and the value is always `undefined`. Thus, the variable declaration is brought to the top of the program's scope but the assignment of the expression is not. Consequential events may transpire as a direct result of the yet-to-be-declared variable.
## Conventions on Naming
The naming of JavaScript variables is loosely constrained by the language's rulesets. Names must be comprised of Latin characters (i.e. letter, digit, money sign, or underscore). The first character is not to be a number. As a general rule, variable casing follows the "Camel Case" procedure `camelCase`, or "Lower Camel Case", given the existence of "Upper Camel Case" `UpperCamelCase` (or "Pascal Case").
## Scoping Variables
Scope is defined as the current execution context in which variable values (or other programmatic entities) can be referenced for usage. Scoping creates a strict allowance of unique variables within its context (i.e. multiple variables cannot exist within the same scope). Nested scopes allow programs to access variables and entities with respect to the given scope's hierarchy.
### Function
An execution environment limited to a defined function in a JavaScript program.
### Block
An execution environment established by a set of curly braces `{}` which contain JavaScript code.
### Module
The existence of this environment is dependent upon whether the JavaScript program lives within an explicitly defined "module". Thus, when present, variables or other contained entities belong to its scope.
### Global
This is the fully-contained environment of a running JavaScript program (or script).
