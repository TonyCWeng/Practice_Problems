## Box-Sizing (Default Behavior)
- Display: Box
- Padding adds to an element's total width and height. Transparent.
- Border adds to an element's total width and height. It is not transparent.
- Margin does not add to an element's dimensions. Margin determines the minimum distance that an element must be from any other element. The margin requirements of two neighboring elements are not additive. If one element requires a margin of 50px and the other 100px, there will be a margin of 100px between the two. The larger of the two margin requirements is observed.
- Total Width = Width + (Left + Right Padding) + (Left + Right Border)

## Display: In-line
- Does not obey width or height constraints
- Padding works horizontally, but top and bottom causes a weird overflow issue. Anything declared later is basically layered on top of its predecessors. Generally won't be used.
- Same goes with border.
- Margin pushes inline elements towards the left and right, but does not work in regards to top and bottom.

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

## CSS box model
- Avoid setting height constraints, as the contents of the box is capable of overflowing from it, rendering such a constraint useless and potentially confusing.
- Width constraints, on the other hand, are properly observed.
