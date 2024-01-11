// Define the API URL
const apiUrl = 'http://calapi.inadiutorium.cz/api/v0/en/calendars/general-en/today';

// Fetch the API data
const req = new Request(apiUrl);
const apiResponse = await req.loadJSON();

// Extract relevant information
var dateOptions = { weekday: 'long', year: 'numeric', month: 'long', day: 'numeric' };
const date = new Date(apiResponse.date);
const celebrations = apiResponse.celebrations;

// Create a message for the widget
let widget = new ListWidget();
widget.addText(`Celebrations for ${date.toLocaleDateString("en-US", dateOptions)}`);
widget.addSpacer(10);  // Add some space between the title and the list

for (const celebration of celebrations) {
  if (celebrations.length == 1 || celebration === celebrations[celebrations.length - 1]) {
    widget.addText(`- ${celebration.title}`);
    break;
  }
  
  widget.addText(message += `- ${celebration.title}\n`);
}

// Present the widget
if (config.runsInWidget) {
  Script.setWidget(widget);
} else {
  widget.presentMedium();
}

// Complete the script
Script.complete();