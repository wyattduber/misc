// Define the API URL
const apiUrl = 'http://calapi.inadiutorium.cz/api/v0/en/calendars/general-en/today';

// Fetch the API data
const req = new Request(apiUrl);
const apiResponse = await req.loadJSON();

// Extract relevant information
const date = apiResponse.date;
const weekday = apiResponse.weekday;
const celebrations = apiResponse.celebrations;

// Create a message for the notification
let message = ""

for (const celebration of celebrations) {
  // Check if it is the first or last for newline formatting
  if (celebrations.length == 1 || celebration === celebrations[celebrations.length - 1]) {
    message += `- ${celebration.title}`;
    break;
  }

  message += `- ${celebration.title}\n`;
}

// Set up the notification
let notification = new Notification();
notification.title = 'Daily Celebrations';
notification.body = message;

// Schedule the notification for today at a specific time (e.g., 8 AM)
const now = new Date();
const notificationDate = new Date(now.getFullYear(), now.getMonth(), now.getDate(), 8, 0, 0);
notification.schedule(notificationDate);

// Complete the script
Script.complete();
