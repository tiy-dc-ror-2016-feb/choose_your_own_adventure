// NOTE: All paths/methods/data in here is made up and incomplete
//       You should update this file to document your API!

// Create a new story
$.mockjax({
  url: '/path/to/create', // What should this be? Negotiate it!
  type: '??',             // This is the HTTP method for this action
  proxy: 'mocks/new-story.json'
});

// Retrieve a story
$.mockjax({
  url: '/where/is/it',
  type: '??',
  proxy: 'mocks/story.json'
});

// Retrieve all steps for a story
$.mockjax({
  url: '/steps-in-a-story',
  type: '??',
  proxy: 'mocks/story-steps.json'
});

// Create a new step in a story
$.mockjax({
  url: '/step-me-up',
  type: '??',
  proxy: 'mocks/new-step.json'
});

// Update a step in a story
$.mockjax({
  url: '/step-update',
  type: '??',
  proxy: 'mocks/step-update.json'
});
