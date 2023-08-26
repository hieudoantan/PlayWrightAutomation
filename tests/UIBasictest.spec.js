const {test, expect} = require('@playwright/test');
//const {expect} = require('../playwright.config');

test('Browser Context Playwright test', async ({browser}) =>
{

    //chrome - plugin/cookies
     const context = await browser.newContext();
     const page = await context.newPage();
     await page.goto("https://rahulshettyacademy.com/loginpagePractise/");

});

test.only('Page Playwright test', async ({page}) =>
{

     await page.goto("https://google.com");
     // get title - assertion
     console.log(await page.title());
     await expect(page).toHaveTitle("Google");

});