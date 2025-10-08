local line_begin = require("luasnip.extras.expand_conditions").line_begin

local get_visual = function(args, parent)
    if (#parent.snippet.env.LS_SELECT_RAW > 0) then
        return sn(nil, i(1, parent.snippet.env.LS_SELECT_RAW))
    else  -- If LS_SELECT_RAW is empty, return a blank insert node
        return sn(nil, i(1))
    end
end

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
    s(
        { trig = ";n", snippetType="autosnippet", wordTrig=false },
        { t("\\eta") }
    ),
    s(
        { trig = ";N", snippetType="autosnippet", wordTrig=false },
        { t("\\Eta") }
    ),
    s(
        { trig = ";f", snippetType="autosnippet", wordTrig=false },
        { t("\\phi") }
    ),
    s(
        { trig = ";F", snippetType="autosnippet", wordTrig=false },
        { t("\\Phi") }
    ),
    s(
        { trig = ";l", snippetType="autosnippet", wordTrig=false },
        { t("\\lambda") }
    ),
    s(
        { trig = ";L", snippetType="autosnippet", wordTrig=false },
        { t("\\Lambda") }
    ),

    -- sections
    s({trig = "h1", condition = line_begin },
        fmta(
            [[\section{<>}]],
            { d(1, get_visual) }
        )
    ),
    s({trig = "h2", condition = line_begin },
        fmta(
            [[\subsection{<>}]],
            { d(1, get_visual) }
        )
    ),
    s({trig = "h3", condition = line_begin },
        fmta(
            [[\subsubsection{<>}]],
            { d(1, get_visual) }
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
              \begin{equation}\label{}
                  <>
              \end{equation}
            ]],
            {
              i(1),
            }
        )
    ),
    s({trig="newfig", condition = line_begin},
        fmta(
            [[
                \begin{figure}[h]
                    \includegraphics[width=0.6\textwidth]{<>}
                    \caption{<>}
                    \label{fig_<>}
                \end{figure}
            ]],
            {i(1), i(2), i(3)}
        )
    ),
}
