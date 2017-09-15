# What happens when you navigate to a url

1. Enter a URL into a Browser

2. Browser looks up IP address for the domain name
- DNS lookup occurs in this order:
  1. Browser Cache (browsers cache search results for some fixed duration, 2-30 minutes)
  2. OS cache
  3. Router Cache
  4. ISP DNS Cache
  5. Recursive search (stops checking caches, actually searches). Normally do
    not have to result to this, as the ISP DNS cache is likely to hold it.
    Super slow relative to caching.

3. Browser sends HTTP GET request to the proper web server

4. If the website in question was facebook or tumblr, or X large site, the
  server responds with a permanent redirect (this is done in part fo search engine
  rankings, as redirects can consolidate url hits from different URLs that lead
  to the same page)

5. Browser sends out another GET request to the redirect link.

6. Server receives get request, processes it.

7. Server sends HTM response

8. Browser knows what to render/begins rendering.

9. Browser sends get requests to retrieve images/css style sheets/javascript files

10. Browser sends additional async requests (ajax), if needed (update dynamic content like friends' list).
