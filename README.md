# PowerShell Bing Search Script

This PowerShell script performs a specified number of random searches using the Bing search engine. It opens search queries in multiple tabs, introduces delays between searches, and has the option to close and restart the browser after a certain number of searches.

## Usage Instructions

1. Copy the raw code of the PowerShell script [from this link](<RAW_SCRIPT_LINK>) by right-clicking the link and selecting "Save link as" or "Copy link address" (depending on your browser).

2. Open a text editor (e.g., Notepad) and paste the copied raw code into a new file.

3. Save the file with a `.ps1` extension, for example, `bing_search_script.ps1`.

4. Locate the saved `.ps1` file and right-click on it.

5. From the context menu, select "Run with PowerShell" to execute the script.

## Script Functionality and Features

- The script performs random searches using the Bing search engine.

- It uses an array of search queries that can be customized with desired keywords or phrases.

- The script opens each search query in a new tab in the default web browser.

- It introduces a random delay between searches (3 to 7 seconds by default) to simulate natural browsing behavior.

- After a specified number of searches (default is every 5 searches), the script can automatically close the browser and restart it.

- Closing and restarting the browser helps avoid excessive resource usage and clears any accumulated browsing data.

- The script shuffles the search queries to provide a randomized search experience.

- Duplicate search queries within a single run of the script are avoided to prevent repetitive searches.

- The script can be customized by modifying parameters such as the number of searches, delay range, and the search queries array.

Note: The script assumes the use of the Microsoft Edge browser. If you're using a different browser, make sure to modify the process name accordingly in the script.


