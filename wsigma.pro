pro wsigma,x,sigx,wm,ws

; PURPOSE:
;    Calculate the weighted mean and weighted standard deviation
;    (i.e., the square root of the weighted variance) of a sample.
;
; INPUT:
;    x      Array of data values.
;    sigx   Array of standard deviations of data values.
;
; OUTPUT:
;    wm     Weighted mean.
;    ws    Weighted standard deviation.
;
; MODIFICATION HISTORY:
;    2017-04-13 Megan M. Kiminki -- Program created.

ndat    = n_elements(x)
weights = 1.0 / sigx^2.
wm      = total(x * weights) / total(weights)
wvar    = (1.0 / total(weights)) * total( (x-wm)^2. * weights )
ws      = sqrt(wvar * ndat / (ndat-1))
 


return
end
