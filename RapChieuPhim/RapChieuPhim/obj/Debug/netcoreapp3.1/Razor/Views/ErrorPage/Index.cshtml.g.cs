#pragma checksum "C:\Users\kimhu\Desktop\RapChieuPhim\RapChieuPhim\RapChieuPhim\Views\ErrorPage\Index.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "0340feb784d093cf318a13ec640ee01595fa5d0d"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(AspNetCore.Views_ErrorPage_Index), @"mvc.1.0.view", @"/Views/ErrorPage/Index.cshtml")]
namespace AspNetCore
{
    #line hidden
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Threading.Tasks;
    using Microsoft.AspNetCore.Mvc;
    using Microsoft.AspNetCore.Mvc.Rendering;
    using Microsoft.AspNetCore.Mvc.ViewFeatures;
#nullable restore
#line 1 "C:\Users\kimhu\Desktop\RapChieuPhim\RapChieuPhim\RapChieuPhim\Views\_ViewImports.cshtml"
using RapChieuPhim;

#line default
#line hidden
#nullable disable
#nullable restore
#line 2 "C:\Users\kimhu\Desktop\RapChieuPhim\RapChieuPhim\RapChieuPhim\Views\_ViewImports.cshtml"
using RapChieuPhim.Models;

#line default
#line hidden
#nullable disable
#nullable restore
#line 3 "C:\Users\kimhu\Desktop\RapChieuPhim\RapChieuPhim\RapChieuPhim\Views\_ViewImports.cshtml"
using RapChieuPhim.Areas.Admin.Models;

#line default
#line hidden
#nullable disable
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"0340feb784d093cf318a13ec640ee01595fa5d0d", @"/Views/ErrorPage/Index.cshtml")]
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"ad80c071e32e25b1283406dd58bf453243598d01", @"/Views/_ViewImports.cshtml")]
    public class Views_ErrorPage_Index : global::Microsoft.AspNetCore.Mvc.Razor.RazorPage<dynamic>
    {
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
            WriteLiteral("\r\n");
#nullable restore
#line 2 "C:\Users\kimhu\Desktop\RapChieuPhim\RapChieuPhim\RapChieuPhim\Views\ErrorPage\Index.cshtml"
  
    ViewData["Title"] = "Index";

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n<div class=\"main\">\r\n    ");
#nullable restore
#line 7 "C:\Users\kimhu\Desktop\RapChieuPhim\RapChieuPhim\RapChieuPhim\Views\ErrorPage\Index.cshtml"
Write(await Html.PartialAsync("../Shared/_MenuPartial.cshtml"));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n    <div class=\"error-content\">\r\n        ");
#nullable restore
#line 9 "C:\Users\kimhu\Desktop\RapChieuPhim\RapChieuPhim\RapChieuPhim\Views\ErrorPage\Index.cshtml"
   Write(await Html.PartialAsync("../Shared/_TopHeaderPartial.cshtml"));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n        <div class=\"error-404 text-center\">\r\n            <h2>404</h2>\r\n            <p>Sorry this was unexpected</p>\r\n            <a class=\"b-home\" href=\"Home\">Back to Home</a>\r\n        </div>\r\n        ");
#nullable restore
#line 15 "C:\Users\kimhu\Desktop\RapChieuPhim\RapChieuPhim\RapChieuPhim\Views\ErrorPage\Index.cshtml"
   Write(await Html.PartialAsync("../Shared/_FooterPartial.cshtml"));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n    </div>\r\n</div>\r\n<div class=\"clearfix\"></div>\r\n\r\n");
        }
        #pragma warning restore 1998
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.ViewFeatures.IModelExpressionProvider ModelExpressionProvider { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IUrlHelper Url { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IViewComponentHelper Component { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IJsonHelper Json { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IHtmlHelper<dynamic> Html { get; private set; }
    }
}
#pragma warning restore 1591
