<% 
function deBug(breakPoint)

    dim ret(2)

    ret(0) =  "{"& chr(34) &"erro"& chr(34) &":"
    ret(1) =  "{"& chr(34) &"msg"& chr(34) &": "& chr(34) & breakPoint & chr(34) &"}"
    ret(2) =  "}"

    response.write ret(0) & ret(1) & ret(2)
    response.end

end function
%> 