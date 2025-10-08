local line_begin = require("luasnip.extras.expand_conditions").line_begin

return {
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
        s({trig = "h1", condition = line_begin },
          fmta(
            [[\section{<>}]],
            { i(1) }
          )
        ),
        s({trig = 'ff'},
          fmta(
            [[\frac{<>}{<>}]],
            {
              i(1),
              i(2)
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
}
