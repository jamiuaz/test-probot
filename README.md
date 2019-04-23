# brafton-iis-cookbook

This is a wrapper cookbook for the IIS cookbook. It will set up IIS servers to the require state

## Supported Platforms

- Windows Server 2012 R2

## Attributes

<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['brafton-iis']['bacon']</tt></td>
    <td>Boolean</td>
    <td>whether to include bacon</td>
    <td><tt>true</tt></td>
  </tr>
</table>

## Usage

### brafton-iis::default

Include `brafton-iis` in your node's `run_list`:

```json
{
  "run_list": [
    "recipe[brafton-iis::default]"
  ]
}
```

Testing
-------
To get set up to test you need to run the following to install dependancies for test kitchen.

```    bundle install --path vendor/bundle --without test```

TODO

## License and Authors

Author:: James Toyer (<james.toyer@brafton.com>)
