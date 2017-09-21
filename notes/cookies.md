# Cookies vs LocalStorage vs SessionStorage

## Cookies
- 4000 KB limit (includes name, value, expiry date)
- Data is sent back to the server for every HTTP request(HTML, images, JavaScript, CSS, etc), so it generates a lot of traffic between client and server

## LocalStorage
- 5120 KB limit is an improvement in size
- Data is NOT sent back to the server for every HTTP request
- Data stored in localStorage is persistent until explicitly deleted
- Same origin policy (document/scripts must share the same protocol, script, and port)

## SessionStorage
- Similar to localStorage
- Changes are available on a per window/tab basis (no carryover)
- Changes made and saved are for the current page, as well as future visits to the site on the same window
- Storage is deleted once the window is closed (not persistent)
- Works on Same-origin policy
