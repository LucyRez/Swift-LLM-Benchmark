const { LMStudioClient } = require("@lmstudio/sdk");
let fs = require("fs");
const { writeFile } = require("node:fs");
const { Buffer } = require("node:buffer");

const stringify = require("csv-stringify");

async function main() {
  const client = new LMStudioClient();

  // Load a model
  const anyModel = await client.llm.get({});
  console.log("Got the model");

  var prompts = [
    "Write a function for sorting entities of User by their lastName property.",
    "Write a function to reverse the elements in an array of integers.",
    "Write a function to filter out all the even numbers from an array of integers.",
    "Write a function that returns a dictionary with the frequency count of each character in a given string.",
    "Write a function that merges two arrays of integers and removes duplicates.",
    "Write a function that formats a date to a string in the format yyyy-MM-dd.",
    "Write a function that fetches user data from a given URL and prints the response as a string.",
    "Write a function that sends a POST request with JSON payload to a given URL and prints the response as a string.",
    "Write a function that fetches a list of posts from a given URL and decodes the JSON response into an array of Post objects.",
    "Write a function that fetches image data from a given URL and updates an UIImageView with the downloaded image.",
    "Write a function that fetches weather data from a given URL, decodes the JSON response into a Weather object, and prints the temperature.",
    "Write code for a SwiftUI stack component with circle image on the left side and a label with the bold font of size 15 on the right",
    "Write code in SwiftUI for a button with a rounded rectangle shape, a gradient background, and a shadow.",
    "Write code in SwiftUI for a VStack containing two text fields and a button below them.",
    "Write code in SwiftUI for a slider that updates a text label with the current value.",
    "Write code in SwiftUI for a list displaying items from an array of strings.",
    "Write code in SwiftUI for a toggle switch that changes the background color of the view.",
    "Write SwiftUI code for a segmented control that displays different text based on the selected segment.",
    "Write SwiftUI code for a circular progress bar that fills based on a percentage value.",
    "Write code in SwiftUI for a navigation view with a list of items, where tapping an item navigates to a detail view.",
    "Write SwiftUI code for a text field with a secure entry toggle button to show or hide the password.",
    "Write code in SwiftUI for a view containing a map that shows a specific location using MapKit.",
    "Write SwiftUI code for a button that scales up and down when tapped.",
    "Write SwiftUI code for a circle that changes color with a fade transition when tapped.",
    "Write code in SwiftUI for a text label that moves horizontally across the screen when tapped.",
    "Write SwiftUI code for a rectangle that rotates 360 degrees when tapped.",
    "Write SwiftUI code for a view that shows and hides a text label with a slide transition when a button is tapped.",
    "Write SwiftUI code for a registration screen with text fields for username, email, and password, a register button, and a picker to select the user's gender.",
    "Write SwiftUI code for a profile screen that displays a user's profile picture, name, email, and a button to log out.",
    "Write code in SwiftUI for a settings screen with toggles for notifications and dark mode, and a section for app version information.",
    "Write code in SwiftUI for a dashboard screen with a greeting message, a list of recent activities, and a button to refresh the data.",
    "Write code in SwiftUI for a contact us screen with text fields for name and message, and a send button.",
    "Write SwiftUI code for a home screen with a tab view that includes tabs for Home, Search, and Profile.",
    "Write SwiftUI code for an onboarding screen with three pages, each containing an image and a description, and a button to skip the onboarding process."
  ];

  var results = [{ content: "", tokensPerSecond: 0 }];

  for (let i = 0; i < prompts.length; i++) {
    console.log("Trying to receive a prediction.....");

    const prediction = anyModel.respond(
      [
        {
          role: "system",
          content:
            "Your task is to generate code in Swift for an iOS application following the given description. Don't give explanations of the generated code.",
        },
        {
          role: "user",
          content: prompts[i],
        },
      ],
      {
        contextOverflowPolicy: "stopAtLimit",
        maxPredictedTokens: 2048,
        temperature: 0.7,
        inputPrefix: "Q: ",
        inputSuffix: "\nA:",
      }
    );

    const result = await prediction;

    console.log("Got prediction.....");

    try {
      // Although the LLM is guaranteed to only produce valid JSON, when it is interrupted, the
      // partial result might not be. Always check for errors. (See below)
      console.info(result);
      results.push({
        content: result.content,
        tokensPerSecond: result.stats.tokensPerSecond,
      });
    } catch (e) {
      console.error(e);
    }
  }

  console.log("Started writing to file.....");

  const filename = `test.csv`;

  let data = [];
  let columns = {
    output: "output",
    t: "t/s",
  };

  results.forEach((someObject, index) => {
    data.push([someObject.content, someObject.tokensPerSecond]);
  });

  stringify.stringify(data, { header: true, columns: columns }, (err, output) => {
    if (err) throw err;
    fs.writeFile(filename, output, (err) => {
      if (err) throw err;
      console.log("csv saved");
    });
  });

}
main();
