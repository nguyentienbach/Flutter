import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My app', // used by the OS task switcher
      home: MyHomeScreen(),
    ),
  );
}

class MyHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Trang chủ'),
      ),
      body: SafeArea(
        child: Container(
            alignment: Alignment.center,
            width: 390,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              //crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Thái Bình Dương 0850080013',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w900),
                ),
                SizedBox(
                  height: 20,
                ),
                buildRowLayout(),
                SizedBox(
                  height: 20,
                ),
                Image.network(
                  'https://storage.googleapis.com/cms-storage-bucket/70760bf1e88b184bb1bc.png',
                  width: 200,
                ),Image.network(
                  'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAZIAAAB9CAMAAAC/ORUrAAAA21BMVEX///91dXUst/YCWJsDWJxBxP8rt/YEWZxtbW1ra2toaGjX19dycnLJyck/n9XCwsKIiIgywf+85/8ATJGbrsMkZ6IAUpZAte6urq6Pj482vPmkpKSBgYHj4+OuvM7Q0NDv7++Xl5f29vYASZS4uLibm5vs+P/Z4uzExMTe3t5Nx//w9PgQb7EARJIAUZgTdrYXgMDY8f9ozv9fX19+nMHAzt8Zh8fT7/+R2f/f7PZivOwuc6s4jcM5qeIumNIIaaw0babK1uVPfK5njLeJpMVLea0APoaEtdaxvc1bmX9pAAAMaklEQVR4nO3deZvaNgIGcHMMkYwJTKahZjDBMGYGJjtseiRtNm1ztN3t9/9EtQFbtyzJku1s/f7Vh4Bx9RtZh2XheZVz/91PL178VP04Xezk/c9X1+d8/6Lpc+mS5v776+urPNePXVVpOinIFZHrn5s+pX92GJBTRWn6rP7B+Y4D0pk0GAFIls6kiUhAOpMmIgfpTGpPKUhnUm9UQDqTGqMI0pnUFXWQzqSWaIF0Ju6jC9KZOI4BSGfiMmYgnYmzGIN0Jm5SBaQOk1UoTJJMJ+N46/oMak5FkBpMxn4gCsgC/d4mGf/fuFQHcW8yBr2ypDZ+lKzcnkctef+f/reVc/X46NZEgeTMkqp89XXl+YeXFvLhl1+dmiiSZAH+MnZ5Ks7z6rfrj/Nh9cwHL587PE0NkrSu+LvY4bm4zvD57ejjfEBEywJ96ObDa2enqUWSoSTOTsV13j49v+2TJrr1A31y/syZiSZJevnqtaShH6/zKH7g5TEl6Y/+NTcWwVHcmWAkbDe41RUlguCcH9Te//ZunpH0+7mJAUgtJogkWlCZRYHvQ8DKgIWbc9HLLD8vX+39n+YXkks9MRPBUFyZFCSAW/+3q0kY+YBSCXot6A9rkny+G1xIzibGIs5NEMlE+J7tegdJlQDELk5GK5okH+YFSWYiKfFnpzRnokKSZR/BoF0meiSfnwaIRGjyjE4TJqoknreO8M5ZEDR97dIj+TInSG45JoyHRMWliTqJ5019rKIEkfVz0YsWycPTACMZjRgTgYcQpTAZWDfRIfFivKKAne1z0YsWye9HjGQ0ok1kIAIUdyZaJJ63hMgE7i2fi150SN4/DRDJaESblInwUAbOTDRJ0osXMvFju+eiFx2SUyWhSAoTBRC5ydCuiS6Jt0cmQaNDRg2S108DRDIakSZqIhwUbF7Gqok2iZegaxdUnV5yEQ2SH4+IZDQiTZRFGJOBIxN9Em+JtfEWz0Q36iSXSsKSZCYaJDWZGJB4UdEXBg228Ookl0pyIhlR+Xf7TExIYqw5kb5xNZ5Mk2S6Xx/iiqfJiTLJ67uBiKTfr1RPBpjJ3JqJCYmXFJcu/mSll82LLSM/nz4H0Pdn4djg9OLDeDzmgyqT/HFEJLRIG02MSDxUS2bcf18v2NnjAPgbLZVVMoNnVb/4lni3zBMVR14SYf5I7oYCkvNQ/lbr2iUksWdiRjIpqglvbDINaI+88GCP/y3rTZ7ipX0PqaLeduxz7q8Rt90gfYOtqCQCEmsm86MdEzMSDzXwzC3GdSC7dwwj3n3iKcxL9PLChDgIRgKFR85PaEod+zgUkPT71U0GDkwMSVBrQvWDt4uSQuPeJ54WhzsfZEYepArJN8cBn6TfNzORXbqsmBiSbItOF3nlOgguWXjghjkcSbJi2qEKJMdBOUkFE4LEjokhCervEEUw8UUlRZQa0ycgSA7MQSqQvBKR9PumJuIrlx0TU5KiEANsjp4WyZZ6w6zPRP3VM+spcBJOqVcgIdZeiUnsmAytmJiSrIqyQaPFMSESALgIJ+PD4bCeLtPuE1FuIXk0nCRiL33mJK/uBnySPh0NExmJBRNTEo/tBse4SEANQuIQ4Cj+gTgYRpIQXa1LEMkPMA+SAxAL2Xt4NlQlMTWhSYbzm/d6JUnHmGRRNCZ50fdQIXEXDyf4fWKyo4aRoNoHYLBYhmG43EWo8VnliYvaBFZE8C9+i1eSoZxEw0TSmKS5+UavJOkYk4RM+34ohm8Bf5FqjF2TyOsLIskPG8BoGktPQGVC5eVQQMIR0TCRXrmaIykG8EHRLmwX59cA28u9ZIMtd8VfRySXcgZR6dyLAglRScpJzEzaQ3LgdbmSrDkBS/GnFmjYj89FTakBv8qyYwWST3M9EmWTdpIUfR9i5jG9eAXCOpIF1RL8bRQJPAg/j1JO8vlpoEmiatJOEjR+Jxd0LeS3UNA4EC9JkgQqPS5RTvLpSBYXIhGJqJq0k8RDXV7y9Vj+sQ3TU/MoEl9tCr+U5PMTPd2hQKJm0nYSoPWxQ37Bw+eQcRJ6GClKKcmfRxMSbZOvn6SY18e7BUQtUTxOGcnDEzMpqESiZCIbmHx9JLt85IG1QRiJ8kKkMpIvR0MSFRPZlasFJPL2nEkxY4J9Dq8lqscpIckqiSGJgknLSTQXcxVjTKx2IRL2LqUoJSQ/Hs1Jyk1aSSLqBBPviVeHw4GcdvLW+TdC9BoigbGnmBKSO7a01En6t2/kJq1sS1bcoWKReL+MoA8hzKZpfb+3CNfx+V/kJOoNk5zkbTWSMpNW9rjGvAmVS1ZhtryEfLoxAH4vzEblUhL50J+InOR03apAIjdp57hkz0475oec+exdqPNbYZCgb+SSKA5KvDKSP6uSSE3aSYIm58l1wSvyOVM6ABTDdx4Js+RHHDnJyzl7nVeY41I0aScJuoVFzBGGohqCqkr+H1wS9bOQk3w5suWlSSIxaScJutGLPdq7JZ76LQmXRP2JFZW2pBqJ2KSVJGg5BDYsiZlVXLLdWJySvLqzQCIyGbaSJOF0uGJ6CwkfRIvdcrnbROl/MlxOSV4/SUmqmYhEmiWZcVr3Hl7oACzzkUiW7SGhV9M7Jbk0JkSBGZDwTaSVpCmSmLMAFX9gDvR4Zbte4I2/W5LTHFd1Ep6J/LrVFAm6bhXTKSv88WvRTFW89OU9Lmsk3u9MNZGtdtQxaScJZ5oQrXSQ3heMF9JxiT0S7zi3QsKYCEUaJdmjLnB8eQlb6yi/UysdvdskYabnxSvntUxKKklDJEWFQEtDE07F4WZSFwlzX9GUhDQZtpIkRHPpRYWYoeuW/MNJbSS0iegpLD2TsutWIyT4euziRXTft+RZ+F1dbYl3MhGTmJmIK0mTJNhWBMWH0GjeL9k7ra4e1ymESQWSwqRcpAmSHVrAi24oYjupyj+N7OogOe+NJiAxMWklSYhmt7CuVXFjquwmVFhrLUlN7nASZncITRMFkfpJEmy3Dqz00UJ6ySLtLNjyIPSiQxLMhLOHiqbJsI0kIda0Q6zVQCTy/QWntZMgE3anoWomg1aQoHYkLQq8+NCteP4WHpdssc9bIynbizU34ZHomIxIE4FIvSQrfK6XfIyE22qz2TiYdixfZ/Rw3kaF3rVO0yR97+27ebtIiJu4VG1Ay7qAZDplij+Qa4sElD+Ncjah9nbUMzm/FzMRidRIsie3NaHH6MVgRbLjI/kUdkUS9FSEwhKKk4mARAklf2thMmiaZJuQm9WwPwSAdW5FxUqKVCVZFn8D0tbrksxk/tstUbzqJthbcxOhSC0k8X5B7iTA+2kG7HaJ4OK+p/aOqEiC5jl9lae2UpP5L1dMCaugkO88m4hFLJLwCmMbj6e7HrPdGYg4nRz8CWpeGe3ojR0qkqD5AqVqkprM3zxyC1muwrwvMxFftiyS9CImp1+U4WwdBLlDjzVW5OxdxWl+HHQBrEiCOhTknizCluXh7uOjsJwFKtx3pSYSEYskzA8vMRSXt/mCqd4Z3kPuTbGKFKOWKJjZuoWF38YMgsvXpd8knmN7ePpWXtYEi/gdtMnQGYlaQBQLDkXsodID/izb1GZM7Wnjx9ZIxpD4ut5iMQMQyH4x4uHNrYJJadJx/DvJ787VTAJkPU5q76fLr/wSV750xC9dOa9DQu9JdK7Y0h/xePh1VN0k+zBuMmySBPjyhe1h2dZM2TXPHsmKtyGb/HdV3mPNhTkIYUKL1EiS/s2HZbNJoXzXOj/raNsjwbe/VyQhTExQis/evrvhi9RFEqRNg8q85ESycD4ITn1jiyTEz6mokVQzwTtjl3rSBEnaJEC42cdqx4tngotX4F+6zjZJONWy9Aeh7omCNRY51xMWxAKJD2SBPoiWU62fgF33OM/8BLDYzWmdfyN2n8OYxBvTuxKX/0bXvdZNEklG7254+W9FkjiZCjNZj1cmvwtHb2+eXfVQUa+SPOgT04JJ91HvbGIF/7IAlj/zfT+6tZPr//31ipMH7f+HGrKdLCN42vs0rWfBpmT/uZRpPzlH9fpIZJ2OfC7fBTYqpvfXV1Zy/cLgbJtMnI4TDeuZdrar7LuUf5PDkslXR9Lm2DHpSGzGiklHYjU2TDoSu7Fg0pFYTnWTjsR27juS1qWqSUdiPxWvXR2Jg1SrJx2Ji1Qy6UicpIpJR+ImFUw6EkcxN+lIXMXYpCNxFlOTjsRdDE06EocxM+lIXMbIpCNxmvura/10JE5z/0I/902f9FeTvwGHj8+DispYfQAAAABJRU5ErkJggg==',
                  width: 200,
                ),Image.network(
                  'data:image/png;base64,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',
                  width: 90,
                ),

                ElevatedButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('Nut da duoc bam!')));
                    },
                    child: Text('Click me!')),
              ],
            )),
      ),
    );
  }
}

Widget buildRowLayout() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        color: Colors.blueAccent,
        height: 100,
        width: 100,
      ),
      Container(
        color: Colors.greenAccent,
        height: 100,
        width: 100,
      ),
      Container(
        color: Colors.redAccent,
        height: 100,
        width: 100,
      )
    ],
  );
}