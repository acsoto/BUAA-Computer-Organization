template="""
    <comp lib="0" loc="(590,%d)" name="Tunnel">
      <a name="facing" val="east"/>
      <a name="label" val="we%d"/>
    </comp>
"""

start=170
result=""
for i in range(0,32):
    result+=template%(start+i*40,i)

print(result)
