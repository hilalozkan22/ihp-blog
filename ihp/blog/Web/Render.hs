module Web.Render where
import Web.View.Prelude
import qualified Text.MMark as MMark

renderMarkdown text = 
    case text |> MMark.parse "" of
        Left error -> "Something went wrong"
        Right markdown -> MMark.render markdown |> tshow |> preEscapedToHtml
