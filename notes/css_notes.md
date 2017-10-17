## Box-Sizing
- padding + border are included in the element's total width and height.
- Note that margin is not.

## CSS Positioning
- Static (default): element rendered in order, as it is dictated by flow.
- Absolute: positioned relative to its first non-static ancestor element
- Fixed: positioned relative to browser window.
- Relative: positioned relative to its static position.
  - Ex. left: 20px would move the element 20 pixels towards the right.
- Sticky: Toggles between relative and fixed. Becomes fixed after an
  offset position is met. If we scroll to another stick element, that element
  may overlap and appear on top of it.

## CSS Text-Align
- left: aligns content to the left side
- right: aligns content to the right side of the element
- center: centers content
- justify: stretches content so that each line has equal width (magazine print)

## Align-items (self/content)
- self: targets just the element
- content: used for multi-line flex boxes. No effect on single line. Uncommonly used.
- center/flex-start/flex-end/space-between/space-around
- space between vs space-around: Space-between evenly spaces elements whereas space-around introduces half-sized spaces on both ends as well.
