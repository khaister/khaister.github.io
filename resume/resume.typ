#let contact_sep() = {text(gray)[$space.hair$|$space.hair$]}

#let role(role_title, org_url, start, end) = {
  [*#role_title*]
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
  #set text(fill: rgb("#222222"), hyphenate: true)
  
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
    #contact_sep()
    #contact.phone
    #contact_sep()
    #link(contact.email_link)[#contact.email_display]
    #contact_sep()
    #link(contact.website_link)[#contact.website_display]

    #v(10pt)
  ]

  // rest of doc
  #doc
]
