// 'Hello World' nodejs12.x runtime AWS Lambda function


exports.handler = function(event, context) {
    console.log('Hello World!');
    context.succeed('Hello, World!');
   };
