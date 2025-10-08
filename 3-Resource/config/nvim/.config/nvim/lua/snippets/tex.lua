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
        { trig = ";A", snippetType="autosnippet",  wordTrig=false },
        { t("\\Alpha") }
    ),
    s(
        { trig = ";b", snippetType="autosnippet", wordTrig=false },
        { t("\\beta") }
    ),
    s(
        { trig = ";B", snippetType="autosnippet", wordTrig=false },
        { t("\\Beta") }
    ),
    s(
        { trig = ";g", snippetType="autosnippet", wordTrig=false },
        { t("\\gamma") }
    ),
    s(
        { trig = ";G", snippetType="autosnippet", wordTrig=false },
        { t("\\Gamma") }
    ),
    s(
        { trig = ";d", snippetType="autosnippet", wordTrig=false },
        { t("\\delta") }
    ),
    s(
        { trig = ";D", snippetType="autosnippet", wordTrig=false },
        { t("\\Delta") }
    ),
    s(
        { trig = ";e", snippetType="autosnippet", wordTrig=false },
        { t("\\epsilon") }
    ),
    s(
        { trig = ";E", snippetType="autosnippet", wordTrig=false },
        { t("\\Epsilon") }
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
