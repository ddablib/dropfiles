# Drop Files Components

## Contents

* [Description](#description)
* [Installation](#installation)
* [Demo Programs](#demo-programs)
* [Update History](#update-history)
* [License and Disclaimer](#license-and-disclaimer)
* [Bugs and Feature Requests](#bugs-and-feature-requests)
* [About the Author](#about-the-author)

## Description

Three components are supplied that support drag and drop from Windows Explorer along with subsidiary components that can filter dropped files. The components are:

* _TPJDropFiles_ - Container control that catches files dragged and dropped onto its client area or the client area of child controls.
* _TPFormDropFiles_ - Non-visual component that catches files dragged and dropped from Explorer onto the form that contains the component.
* _TPJCtrlDropFiles_ - Non-visual component that catches files dragged and dropped from Explorer onto an associated control.
* _TPJExtFileFilter_ - File filter component that filters files according to their extension.
* _TPJWildCardFileFilter_ - File filter component that filters files according to a DOS-style wild card.
* _TPJFileFilter_ - An abstract base class for file filter components.

Some design time assistance is provided by component and property editors.

Key features of the drop files components are:

* An _OnDropFiles_ event is triggered when files are dropped.
* The names of dropped files are made available through the _Files_ array property. For convenience, the name of the first file is also stored in the _FileName_ property.
* The list of dropped files can be configured to include only files, only folders or all files and folders.
* Dropped folders can be recursed so that all the files and sub-folders in each of the dropped folders are listed.
* Filters can be applied to the dropped files and folders. This is done in one of two ways:
  * By handling the _OnFileFilter_ event and deciding which files and folders to pass through the filter.
  * By linking the drop file component to a special file filter component, derived from the abstract _TPJFileFilter_. In this case the dropped files are automatically filtered by the filter component. Two filter components are provided: _TPJExtFileFilter_ that filters according to file extensions and _TPJWildCardFileFilter_ that filters using DOS-style wild-cards. Developers can create further filter components by deriving from _TPJFileFilter_.
* The mouse co-ordinates where the files were dropped can be retrieved, as can a reference to any control under the mouse cursor at the time.
* The _OnBeforeDrop_ event can be used to do pre-processing before the files are actually dropped.
* The _IsFolder_ array property informs if an equivalent item in the Files property is a file or a folder.
* The owning window can be brought to the front when files are dropped.

### Compatibility

The components have been tested on Delphi 7 to XE4 Windows compilers (except Delphi 2005) and the Delphi XE2 to XE4 64 bit compilers. The components are thought to compile on compilers back to Delphi 3, but that is not guaranteed.

The components are for use with the VCL only: they are not compatible with FireMonkey.

.NET and non-Windows platforms are not supported.

## Installation

The _Drop Files Components_, their documentation and the demo programs are supplied in a zip file. Before installing you need to extract all the files from the zip file, preserving the directory structure. The following files will be extracted:

* **`PJDropFiles.pas`** – component source code.
* **`PJDropFiles.dcr`** – component palette glyphs.
* **`PJDropFilesDsgn.pas`** – property editors and component registration source code.
* **`PJDropFilesDsgn.dfm`** – property editor form.
* `README.md` – this file.
* `CHANGELOG.md` – component's change log.
* `MPL-2.txt` – the Mozilla Public License v2.0.
* `Documentation.URL` – short-cut to the component's online documentation.

In addition to the above files you will find the source code of [two demo projects](#demo-programs) the `Demo\1` and `Demo\2` sub-directories.

You can now install the components into the Delphi IDE. To do this, the files `PJDropFiles.pas`, `PJDropFiles.dcr`, `PJDropFilesDsgn.pas` and `PJDropFilesDsgn.dfm` should be added to a design time package. If you need help doing this [see here](https://delphidabbler.com/url/install-comp).

## Demo programs

The source code for two demo programs is included in the download:

1. The main demo program exercises all three drop files components and the filter components.
2. A program that demonstrates how to use _TPJCtrlDropFiles_ with frames.

Both demo programs require Delphi 7 as a minimum. They are both compatible with the Delphi 32 bit and 64 bit Windows compilers.

For more information about the demos see the file [`README.md`](https://github.com/ddablib/dropfiles/blob/main/Demo/README.md) in the `Demos` directory.

## Update History

A complete change log is provided in [`CHANGELOG.md`](https://github.com/ddablib/dropfiles/blob/main/CHANGELOG.md) that is included in the download.

## License and Disclaimer

These components are released under the terms of the [Mozilla Public License v2.0](https://www.mozilla.org/MPL/2.0/).

All relevant trademarks are acknowledged.

## Bugs and Feature Requests

Bugs can be reported or new features requested via the project's [Issue Tracker](https://github.com/ddablib/dropfiles/issues). A GitHub account is required.

Please check if an issue has already been created for a similar report or request. If so then please add a comment containing as much information as you can to the existing issue, or if you've nothing to add, just add a :+1: (`:+1:`) comment. If there is no suitable existing issue then please add a new issue and give as much information as possible.

## About the Author

I'm Peter Johnson – a hobbyist programmer living in Ceredigion in West Wales, UK, writing mainly in Delphi. My programs and other library code are available from: [https://delphidabbler.com/](https://delphidabbler.com/).

This document is copyright © 2005-2022, [P D Johnson](https://gravatar.com/delphidabbler).
