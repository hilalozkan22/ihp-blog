module Web.View.Comments.Show where
import Web.View.Prelude
import qualified Text.MMark as MMark

data ShowView = ShowView { comment :: Comment }

instance View ShowView ViewContext where
    html ShowView { .. } = [hsx|
        <nav>
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href={CommentsAction}>Comments</a></li>
                <li class="breadcrumb-item active">Show Comment</li>
            </ol>
        </nav>
        <h1>Show Comment</h1>
    |]
    
renderMarkdown text = 
    case text |> MMark.parse "" of
        Left error -> "Something went wrong"
        Right markdown -> MMark.render markdown |> tshow |> preEscapedToHtml  
        
            
