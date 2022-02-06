# This is file 'vc-hg.awk' from the vc bundle for TeX.
# The original file can be found at CTAN:support/vc.
# This file is Public Domain.

BEGIN {
	modified = 0
}

### Process output of "hg log"
script=="log" && /^Hash:/		{ Hash			= substr($0, 2+match($0, ":")) }
script=="log" && /^Abr. Hash:/		{ AbrHash		= substr($0, 2+match($0, ":")) }
script=="log" && /^Branch:/		{ Branch		= substr($0, 2+match($0, ":")) }
script=="log" && /^Parent1 Hash:/	{ Parent1Hash		= substr($0, 2+match($0, ":")) }
script=="log" && /^Parent2 Hash:/	{ Parent2Hash	 	= substr($0, 2+match($0, ":")) }
script=="log" && /^Abr. Parent1 Hash:/	{ AbrParent1Hash	= substr($0, 2+match($0, ":")) }
script=="log" && /^Abr. Parent2 Hash:/	{ AbrParent2Hash	= substr($0, 2+match($0, ":")) }
script=="log" && /^Author Name:/	{ AuthorName		= substr($0, 2+match($0, ":")) }
script=="log" && /^Author Email:/	{ AuthorEmail		= substr($0, 2+match($0, ":")) }
script=="log" && /^Author Date:/	{ AuthorDate		= substr($0, 2+match($0, ":")) }

### Process output of "hg status"
script=="status" && /^M / { modified = 1 }

END {
	### Process output of "hg log"
	if (script=="log") {
		### Format dates
		LongDate = substr(AuthorDate, 1, 25)
		DateRAW = substr(LongDate, 1, 10)
		DateISO = DateRAW
		DateTEX = DateISO
		gsub("-", "/", DateTEX)
		Time = substr(LongDate, 12, 14)

		print "%%% This file has been generated by the vc bundle for TeX."
		print "%%% Do not edit this file!"
		print "%%%"

		print "%%% Define HG specific macros."
		print "\\gdef\\HGHash{" Hash "}%"
		print "\\gdef\\HGAbrHash{" AbrHash "}%"
		print "\\gdef\\HGBranch{" Branch "}%"
		print "\\gdef\\HGFirstParentHash{" Parent1Hash "}%"
		print "\\gdef\\HGSecondParentHash{" Parent2Hash "}%"
		print "\\gdef\\HGAbrFirstParentHash{" AbrParent1Hash "}%"
		print "\\gdef\\HGAbrSecondParentHash{" AbrParent2Hash "}%"
		print "\\gdef\\HGAuthorName{" AuthorName "}%"
		print "\\gdef\\HGAuthorEmail{" AuthorEmail "}%"
		print "\\gdef\\HGAuthorDate{" AuthorDate "}%"

		print "%%% Define generic version control macros."
		print "\\gdef\\VCRevision{\\HGAbrHash}%"
		print "\\gdef\\VCAuthor{\\HGAuthorName}%"
		print "\\gdef\\VCDateRAW{" DateRAW "}%"
		print "\\gdef\\VCDateISO{" DateISO "}%"
		print "\\gdef\\VCDateTEX{" DateTEX "}%"
		print "\\gdef\\VCTime{" Time "}%"
		print "\\gdef\\VCModifiedText{\\textcolor{red}{with local modifications!}}%"

		print "%%% Assume clean working copy."
		print "\\gdef\\VCModified{0}%"
		print "\\gdef\\VCRevisionMod{\\VCRevision}%"
	}

	### Process output of "hg status"
	if (script=="status") {
		print "%%% Is working copy modified?"
		print "\\gdef\\VCModified{" modified "}%"
		if (modified==0) {
			print "\\gdef\\VCRevisionMod{\\VCRevision}%"
		} else {
			print "\\gdef\\VCRevisionMod{\\VCRevision~\\VCModifiedText}%"
		}
	}
}
