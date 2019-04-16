module Styles = {
  open Css;

  let arialNarrow =
    fontFace(
      ~fontFamily="Arial FontFace Test",
      ~src=[localUrl("Arial Narrow")],
      ~fontStyle=normal,
      ~fontWeight=`num(500),
      (),
    );

  let section =
    style([
      selector(
        "& > h1",
        [
          fontFamily(arialNarrow),
          fontSize(px(32)),
          fontWeight(`num(300)),
          marginTop(zero),
        ],
      ),
      position(relative),
      background(hex("f5f5f5")),
      margin(px(20)),
      padding(px(10)),
      boxShadow(~y=px(1), ~blur=px(5), rgba(0, 0, 0, 0.3)),
      boxShadows([
        boxShadow(~y=px(1), ~blur=px(5), rgba(0, 0, 0, 0.3)),
        boxShadow(
          ~y=px(1),
          ~blur=px(10),
          ~inset=true,
          rgba(255, 255, 255, 0.5),
        ),
      ]),
    ]);

  let rowLayout =
    style([display(flexBox), flexDirection(row), flexWrap(wrap)]);
};

let component = ReasonReact.statelessComponent(__MODULE__);

let make = (~name, children) => {
  ...component,
  render: _ =>
    <section className=Styles.section>
      <h1> name->ReasonReact.string </h1>
      <div className=Styles.rowLayout> ...children </div>
    </section>,
};
