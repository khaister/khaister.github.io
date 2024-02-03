#set document(
  keywords: "main",
  title: "Khai Nguyen",
  author: "Khai Nguyen",
  date: auto,
)

// ----------
// page setup
// ----------
#set page(margin: (x: 1.1cm, y: 1.3cm))
#set par(justify: true)
#set text(size: 10.5pt, fill: rgb("#222222"), hyphenate: true)

// ------
// styles
// ------
#show heading: it => [
  #set text(weight: "light", tracking: 1em / 23)
  #upper(it)

  #if it.level == 2 [
    #v(-10pt)
    #line(length: 100%, stroke: silver)
    #v(3pt)
  ]
]
#show link: underline

// ---------
// functions
// ---------
#let MONTH_NAMES = (
  "january",
  "february",
  "march",
  "april",
  "may",
  "june",
  "july",
  "august",
  "september",
  "october",
  "november",
  "december",
)

#let separator() = { text(gray)[$space.hair$|$space.hair$] }

#let show_me(me) = [
  // name
  #[
    #text(25pt, weight: "bold", tracking: 1em / 23)[= #me.full_name]
  ]

  // contact
  #[
    #v(-10pt)

    #me.location
    #separator()
    #me.phone
    #separator()
    #link(me.email)
    #separator()
    #link(me.website.url)[#me.website.display]

    #v(10pt)
  ]
]

#let show_summary(summary) = [
  == #summary.name
  #summary.content
]

#let show_skills(skills) = [
  == #skills.name
  #for skill in skills.content [
    - *#skill.name* #skill.desc
  ]
]

#let show_role(role) = {
  [*#role.title*]

  // organization
  text(gray, style: "italic")[ at ]
  link("https://" + role.org_url)[#role.org_url]

  // start date
  text(gray, style: "italic")[ from ]
  let start_month = MONTH_NAMES.at(role.start.month - 1)
  text(
    10pt,
    weight: "light",
    style: "italic",
  )[#upper([#start_month #role.start.year])]

  // end date
  text(gray, style: "italic")[ to ]
  let end_month = "present"
  if role.end != none {
    end_month = MONTH_NAMES.at(role.end.month - 1)
  }
  let end_year = none
  if role.end != none {
    end_year = role.end.year
  }
  text(10pt, weight: "light", style: "italic")[#upper([#end_month #end_year])]
}

#let show_experience(experience) = {
  [== #experience.name]
  for role in experience.roles {
    show_role(role)
    for item in role.experience {
      // link interpolation e.g. replace `{0}` in
      //`lorem {0} ipsum` with an actual link
      for match in item.matches(regex("\\{\d+\\}")) {
        // get the number in the string placeholder to be used
        // as the index to look up the actual link data
        let index = match.text.replace("{", "").replace("}", "")
        let ref = role.links.at(int(index))
        // typst doesn't allow replacing a string with a content block
        // so split it at the placeholder and insert the link
        let splits = item.split(match.text)
        item = splits.at(0) + [#link(ref.url)[#ref.display]] + splits.at(1)
      }

      [- #item]
    }
  }
}

#let show_education(education) = [
  == #education.name
  *#education.degree* _ #education.honor _ in *#education.major* with
  *#education.minor*\
  #education.institution
]

// -------------
// fetch content
// -------------
#{
  let content = json("content.json")
  show_me(content.me)
  show_summary(content.sections.summary)
  show_skills(content.sections.skills)
  show_experience(content.sections.experience)
  show_education(content.sections.education)
}
