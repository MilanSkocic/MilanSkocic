local line_begin = require("luasnip.extras.expand_conditions").line_begin

return {
    -- formatting
    s({trig = "it"},
      fmta(
        [[\textit{<>}]],
        { i(1) }
      )
    ),
    s({trig = "bf"},
      fmta(
        [[\textbf{<>}]],
        { i(1) }
      )
    ),
    s({trig = "em"},
      fmta(
        [[\emph{<>}]],
        { i(1) }
      )
    ),
    s({trig = "ul"},
      fmta(
        [[\underline{<>}]],
        { i(1) }
      )
    ),
    s({trig = "tc"},
      fmta(
        [[\textcolor{<>}{<>}]],
        { i(1), i(2) }
      )
    ),

    -- Greek letters
    s(
        { trig = ";a", snippetType="autosnippet",  wordTrig=false },
        { t("\\alpha") }
    ),
    s(
        { trig = ";b", snippetType="autosnippet", wordTrig=false },
        { t("\\beta") }
    ),
    s(
        { trig = ";g", snippetType="autosnippet", wordTrig=false },
        { t("\\gamma") }
    ),

    -- sections
    s({trig = "h1", condition = line_begin },
      fmta(
        [[\section{<>}]],
        { i(1) }
      )
    ),

    -- environments
    s({trig = 'ff'},
      fmta(
        [[\frac{<>}{<>}]],
        {
          i(1),
          i(2)
        }
      )
    ),
    s({trig = 'ii'},
      fmta(
        [[\item <> ]],
        {
          i(1),
        }
      )
    ),
    s({trig="new", condition = line_begin},
      fmta(
        [[
          \begin{<>}
              <>
          \end{<>}
        ]],
        {
          i(1),
          i(2),
          rep(1),
        }
      )
    ),
    s({trig="neweq", condition = line_begin},
      fmta(
        [[
          \begin{equation}
              <>
          \end{equation}
        ]],
        {
          i(1),
        }
      )
    ),
}
