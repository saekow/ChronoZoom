﻿<%@ 
    Page Language="C#" AutoEventWireup="true" ContentType="text/xml" CodeBehind="sitemap.aspx.cs" Inherits="Chronozoom.UI.SiteMap" 
%><?xml version="1.0" encoding="UTF-8"?>
<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">
<% foreach (Chronozoom.Entities.SuperCollection superCollection in Chronozoom.UI.SiteMap.Collections()) { %>
    <% foreach (Chronozoom.Entities.Collection collection in superCollection.Collections) { %>
    <url>
        <loc><% Response.Write(Chronozoom.UI.SiteMap.UrlForCollection(superCollection, collection)); %></loc>
        <changefreq>weekly</changefreq>
    </url>
    <% } %>
<% } %>
</urlset>
