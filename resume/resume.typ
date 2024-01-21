// test

#let separator() = {text(gray)[$space.hair$|$space.hair$]}

#let role(title: none, org_url: none, start: none, end: none) = {
  [*#title*]
  text(gray, style: "italic")[ at ]
  link("https://" + org_url)[#org_url]
  text(gray, style: "italic")[ from ]
  text(10pt, weight: "light", style: "italic")[#upper(start)]
  text(gray, style: "italic")[ to ]
  text(10pt, weight: "light", style: "italic")[#upper(end)]
}

// TEMPLATE
#let resume(me: none, contact: (), doc) = [
  // page setup
  #set page(
    margin: (x: 1.1cm, y: 1.3cm),
  )
  #set par(justify: true)
  #set text(size: 10pt, fill: rgb("#222222"), hyphenate: true)

  // style headings
  #show heading: it => [
    #set text(weight: "light", tracking: 1em/23)
    #upper(it)

    #if it.level == 2 [
      #v(-10pt)
      #line(length: 100%, stroke: silver)
      #v(3pt)
    ]
  ]

  #show link: underline

  // show name
  #[
    #text(25pt, weight: "bold", tracking: 1em/23)[= #me]
  ]

  // contact info
  #[
    #v(-10pt)

    #contact.location
    #separator()
    #contact.phone
    #separator()
    #link(contact.email)
    #separator()
    #link(contact.website_link)[#contact.website_display]

    #v(10pt)
  ]

  // rest of doc
  #doc
]
