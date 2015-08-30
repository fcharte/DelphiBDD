program ArrayType;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

type
  TMonth = (Jan, Feb, Mar, Apr, May, Jun,
            Jul, Aug, Sep, Oct, Nov, Dec);

  TContent = (Analysis, Listing, Practical);
  TPubYear = 1970..1995;

var
  res: array of String;
  res1: array[1..10] of String;
  res2: array[1..10,1..3] of Integer;
  magazine: array[TPubYear, TMonth, 1..500] of TContent;
  numIssues, numPages: Integer;
  collection: array of array of TContent;

begin
  res1[1] := '256x192x16';

  res2[1][1] := 256;
  res2[1,2] := 192;
  res2[1,3] := 16;

  magazine[1982, TMonth.Jan, 10] := TContent.Listing;

  SetLength(res, 7);
  res[0] := '256x192x16';

  numIssues := 48;
  numPages := 64;

  SetLength(collection, numIssues, numPages);

  collection[0, 0] := TContent.Analysis;

end.
