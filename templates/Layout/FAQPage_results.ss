<h1>$Title</h1>
<% include FAQSearchForm %>
<% if $SearchResults %>
    <h1>
        $SearchTitle
        <div><small>Displaying $SearchResults.CurrentPage of $SearchResults.TotalPages pages for "$Query"</small></div>
    </h1>

    <% loop $SearchResults %>
        <% include FAQSearchResult %>
    <% end_loop %>
    <% with SearchResults %>
        <% include Pagination %>
    <% end_with %>
<% else %>
    <h1>
        $SearchTitle
    </h1>
    $NoResultsMessage
<% end_if %>