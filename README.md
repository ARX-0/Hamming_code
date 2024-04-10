# Hamming_code
a simple implementation of error detection using Hamming code 

used for single bit error detection , the input bits and the parity bits are arranged as follows 
<!DOCTYPE html>
<html lang="en">
<body>


<h2>Hamming Code Mapping</h2>

<table>
    <tr>
        <th>ip[3]</th>
        <th>ip[2]</th>
        <th>ip[1]</th>
        <th>p3</th>
        <th>ip[0]</th>
        <th>p2</th>
        <th>p1</th>
    </tr>
    <tr>
        <td>d3</td>
        <td>d2</td>
        <td>d1</td>
        <td>&nbsp;</td>
        <td>d0</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>

</body>
</html>


p1 is decided based of ip[0] , ip[1] , ip[3] by (EVEN PARITY XOR)

p2 is decided based of ip[0] , ip[2] , ip[3] by (EVEN PARITY XOR)

p2 is decided based of ip[1] , ip[2] , ip[3] by (EVEN PARITY XOR)

## RTL view
![Hamming Code RTL View](https://github.com/ARX-0/Hamming_code/raw/main/images_HC/hamming%20code%20RTL%20view.png
)

## Waveforms and outputs
![Hamming Code WF 2](https://github.com/ARX-0/Hamming_code/raw/main/images_HC/hamming%20code%20wf%202.png
)

![Hamming Code WF](https://github.com/ARX-0/Hamming_code/raw/main/images_HC/hamming%20code%20wf.png
)
## the Tcl console 
![TCL Console Hamming Code](https://github.com/ARX-0/Hamming_code/raw/main/images_HC/tcl_console_hamming_code.png
)
