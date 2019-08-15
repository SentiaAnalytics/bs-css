// Docs copied from MDN

module Cascading: {
  type t = [ | `initial | `inherit_ | `unset];

  let initial: [> t];
  let inherit_: [> t];
  let unset: [> t];

  let toString: t => string;
};

module Length: {
  type t = [
    | `calc([ | `add | `sub], t, t)
    | `ch(float)
    | `cm(float)
    | `em(float)
    | `ex(float)
    | `mm(float)
    | `percent(float)
    | `pt(int)
    | `px(int)
    | `pxFloat(float)
    | `rem(float)
    | `vh(float)
    | `vmin(float)
    | `vmax(float)
    | `vw(float)
    | `zero
  ];

  let ch: float => [> | `ch(float)];
  let cm: float => [> | `cm(float)];
  let em: float => [> | `em(float)];
  let ex: float => [> | `ex(float)];
  let mm: float => [> | `mm(float)];
  let pt: int => [> | `pt(int)];
  let px: int => [> | `px(int)];
  let pxFloat: float => [> | `pxFloat(float)];
  let rem: float => [> | `rem(float)];
  let vh: float => [> | `vh(float)];
  let vmin: float => [> | `vmin(float)];
  let vmax: float => [> | `vmax(float)];
  let zero: [> | `zero];

  let toString: t => string;
};

module Angle: {
  /**
   The angle CSS data type represents an angle value expressed in degrees, gradians, radians, or turns.
   It is used, for example, in <gradient>s and in some transform functions.
   */
  type t = [ | `deg(float) | `rad(float) | `grad(float) | `turn(float)];

  let deg: float => t;
  let rad: float => t;
  let grad: float => t;
  let turn: float => t;

  let toString: t => string;
};

module Direction: {
  /**
   The direction CSS property sets the direction of text, table columns, and horizontal overflow.
   Use rtl for languages written from right to left (like Hebrew or Arabic),
   and ltr for those written from left to right (like English and most other languages).
   */
  type t = [ | `ltr | `rtl];

  /** Text and other elements go from left to right. This is the default value. */
  let ltr: [> t];
  /** Text and other elements go from right to left. */
  let rtl: [> t];

  let toString: t => string;
};

module Position: {
  /**
   The position CSS property sets how an element is positioned in a document.
   The top, right, bottom, and left properties determine the final location of positioned elements.
   */
  type t = [ | `absolute | `relative | `static | `fixed | `sticky];

  let absolute: [> t];
  let relative: [> t];
  let static: [> t];
  let fixed: [> t];
  let sticky: [> t];

  let toString: t => string;
};

module Resize: {
  /**
   The resize CSS property sets whether an element is resizable, and if so,
   in which directions.
   */
  type t = [ | `none | `both | `horizontal | `vertical | `block | `inline];

  /** The element offers no user-controllable method for resizing it */
  let none: [> t];
  /** The element displays a mechanism for allowing the user to resize it, which may be resized both horizontally and vertically */
  let both: [> t];
  /** The element displays a mechanism for allowing the user to resize it in the horizontal direction */
  let horizontal: [> t];
  /** The element displays a mechanism for allowing the user to resize it in the vertical direction */
  let vertical: [> t];
  /** The element displays a mechanism for allowing the user to resize it in the block direction (either horizontally or vertically, depending on the writing-mode and direction value) */
  let block: [> t];
  /** The element displays a mechanism for allowing the user to resize it in the inline direction (either horizontally or vertically, depending on the writing-mode and direction value) */
  let inline: [> t];

  let toString: t => string;
};

module FontVariant: {
  /**
   The font-variant CSS property is a shorthand for the longhand properties font-variant-caps, font-variant-numeric,
   font-variant-alternates, font-variant-ligatures, and font-variant-east-asian.
   You can also set the CSS Level 2 (Revision 1) values of font-variant, (that is, normal or small-caps),
   by using the font shorthand */
  type t = [ | `normal | `smallCaps];

  let normal: [> t];
  let smallCaps: [> t];

  let toString: t => string;
};

module FontStyle: {
  type t = [ | `normal | `italic | `oblique];

  let normal: [> t];
  let italic: [> t];
  let oblique: [> t];

  let toString: t => string;
};

module FlexBasis: {
  type t = [
    | `auto
    | `fill
    | `content
    | `maxContent
    | `minContent
    | `fitContent
  ];

  let fill: [> t];
  let content: [> t];
  let maxContent: [> t];
  let minContent: [> t];
  let fitContent: [> t];

  let toString: t => string;
};

module Overflow: {
  type t = [ | `hidden | `visible | `scroll | `auto];

  let hidden: [> t];
  let visible: [> t];
  let scroll: [> t];
  let auto: [> t];

  let toString: t => string;
};

module Margin: {
  type t = [ | `auto];

  let auto: [> t];

  let toString: t => string;
};

module GridAutoFlow: {
  type t = [ | `column | `row | `columnDense | `rowDense];

  let toString: t => string;
};

module VerticalAlign: {
  type t = [
    | `baseline
    | `sub
    | `super
    | `top
    | `textTop
    | `middle
    | `bottom
    | `textBottom
  ];

  let toString: t => string;
};

module TimingFunction: {
  type t = [
    | `linear
    | `ease
    | `easeIn
    | `easeOut
    | `easeInOut
    | `stepStart
    | `stepEnd
    | `steps(int, [ | `start | `end_])
    | `cubicBezier(float, float, float, float)
  ];

  let toString: t => string;
};
